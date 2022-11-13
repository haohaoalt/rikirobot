// -*- mode: c++ -*-
/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2016, Ryohei Ueda.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/o2r other materials provided
 *     with the distribution.
 *   * Neither the name of the JSK Lab nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *********************************************************************/

#include "opencv_apps/nodelet.h"

namespace opencv_apps
{
  void Nodelet::onInit()
  {
    connection_status_ = NOT_SUBSCRIBED;
    nh_.reset (new ros::NodeHandle (getMTNodeHandle ()));
    pnh_.reset (new ros::NodeHandle (getMTPrivateNodeHandle ()));
    pnh_->param("always_subscribe", always_subscribe_, false);
    pnh_->param("verbose_connection", verbose_connection_, false);
    if (!verbose_connection_) {
      nh_->param("verbose_connection", verbose_connection_, false);
    }
    // timer to warn when no connection in a few seconds
    ever_subscribed_ = false;
    timer_ = nh_->createWallTimer(
      ros::WallDuration(5),
      &Nodelet::warnNeverSubscribedCallback,
      this,
      /*oneshot=*/true);
  }

  void Nodelet::onInitPostProcess()
  {
    if (always_subscribe_) {
      subscribe();
    }
  }

  void Nodelet::warnNeverSubscribedCallback(const ros::WallTimerEvent& event)
  {
    if (!ever_subscribed_) {
      NODELET_WARN("'%s' subscribes topics only with child subscribers.", nodelet::Nodelet::getName().c_str());
    }
  }

  void Nodelet::connectionCallback(const ros::SingleSubscriberPublisher& pub)
  {
    if (verbose_connection_) {
      NODELET_INFO("New connection or disconnection is detected");
    }
    if (!always_subscribe_) {
      boost::mutex::scoped_lock lock(connection_mutex_);
      for (size_t i = 0; i < publishers_.size(); i++) {
        ros::Publisher pub = publishers_[i];
        if (pub.getNumSubscribers() > 0) {
          if (!ever_subscribed_) {
            ever_subscribed_ = true;
          }
          if (connection_status_ != SUBSCRIBED) {
            if (verbose_connection_) {
              NODELET_INFO("Subscribe input topics");
            }
            subscribe();
            connection_status_ = SUBSCRIBED;
          }
          return;
        }
      }
      if (connection_status_ == SUBSCRIBED) {
        if (verbose_connection_) {
          NODELET_INFO("Unsubscribe input topics");
        }
        unsubscribe();
        connection_status_ = NOT_SUBSCRIBED;
      }
    }
  }
  
  void Nodelet::imageConnectionCallback(
    const image_transport::SingleSubscriberPublisher& pub)
  {
    if (verbose_connection_) {
      NODELET_INFO("New image connection or disconnection is detected");
    }
    if (!always_subscribe_) {
      boost::mutex::scoped_lock lock(connection_mutex_);
      for (size_t i = 0; i < image_publishers_.size(); i++) {
        image_transport::Publisher pub = image_publishers_[i];
        if (pub.getNumSubscribers() > 0) {
          if (!ever_subscribed_) {
            ever_subscribed_ = true;
          }
          if (connection_status_ != SUBSCRIBED) {
            if (verbose_connection_) {
              NODELET_INFO("Subscribe input topics");
            }
            subscribe();
            connection_status_ = SUBSCRIBED;
          }
          return;
        }
      }
      if (connection_status_ == SUBSCRIBED) {
        if (verbose_connection_) {
          NODELET_INFO("Unsubscribe input topics");
        }
        unsubscribe();
        connection_status_ = NOT_SUBSCRIBED;
      }
    }
  }

  void Nodelet::cameraConnectionCallback(
    const image_transport::SingleSubscriberPublisher& pub)
  {
    cameraConnectionBaseCallback();
  }

  void Nodelet::cameraInfoConnectionCallback(
    const ros::SingleSubscriberPublisher& pub)
  {
    cameraConnectionBaseCallback();
  }

  void Nodelet::cameraConnectionBaseCallback()
  {
    if (verbose_connection_) {
      NODELET_INFO("New image connection or disconnection is detected");
    }
    if (!always_subscribe_) {
      boost::mutex::scoped_lock lock(connection_mutex_);
      for (size_t i = 0; i < camera_publishers_.size(); i++) {
        image_transport::CameraPublisher pub = camera_publishers_[i];
        if (pub.getNumSubscribers() > 0) {
          if (!ever_subscribed_) {
            ever_subscribed_ = true;
          }
          if (connection_status_ != SUBSCRIBED) {
            if (verbose_connection_) {
              NODELET_INFO("Subscribe input topics");
            }
            subscribe();
            connection_status_ = SUBSCRIBED;
          }
          return;
        }
      }
      if (connection_status_ == SUBSCRIBED) {
        if (verbose_connection_) {
          NODELET_INFO("Unsubscribe input topics");
        }
        unsubscribe();
        connection_status_ = NOT_SUBSCRIBED;
      }
    }
  }
}
