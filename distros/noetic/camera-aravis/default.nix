
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aravis, camera-info-manager, catkin, dynamic-reconfigure, glib, image-transport, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-camera-aravis";
  version = "4.0.1-r2";

  src = fetchurl {
    url = "https://github.com/FraunhoferIOSB/camera_aravis-release/archive/release/noetic/camera_aravis/4.0.1-2.tar.gz";
    name = "4.0.1-2.tar.gz";
    sha256 = "7b521ceb0d18a3751afaa1ed5831ab10053c8f512bbbc47a6baa4d9ca7dc60ac";
  };

  buildType = "catkin";
  buildInputs = [ glib message-generation ];
  propagatedBuildInputs = [ aravis camera-info-manager dynamic-reconfigure image-transport message-runtime nodelet roscpp sensor-msgs std-msgs tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_aravis: A complete and comfortable GenICam (USB3Vision and GigEVision) based camera driver for ROS (ethernet and usb).'';
    license = with lib.licenses; [ "LGPL-2.0-only" ];
  };
}
