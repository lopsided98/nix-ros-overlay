
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aravis, camera-info-manager, catkin, dynamic-reconfigure, glib, image-transport, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-camera-aravis";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/FraunhoferIOSB/camera_aravis-release/archive/release/noetic/camera_aravis/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "966628c385a6c1b7c4c2429bcd0ae2fea2c63f8800420b1b8edc59b66fe13b2f";
  };

  buildType = "catkin";
  buildInputs = [ catkin glib message-generation ];
  propagatedBuildInputs = [ aravis camera-info-manager dynamic-reconfigure image-transport message-runtime nodelet roscpp sensor-msgs std-msgs tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_aravis: A complete and comfortable GenICam (USB3Vision and GigEVision) based camera driver for ROS (ethernet and usb).'';
    license = with lib.licenses; [ "LGPL-2.0-only" ];
  };
}
