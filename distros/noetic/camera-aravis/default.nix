
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aravis, camera-info-manager, catkin, dynamic-reconfigure, glib, image-transport, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-camera-aravis";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/FraunhoferIOSB/camera_aravis-release/archive/release/noetic/camera_aravis/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "18d356bb4c429a1361c85b14b41de397a1dd2b56d975cb2c643cafb54c50db5a";
  };

  buildType = "catkin";
  buildInputs = [ glib message-generation ];
  propagatedBuildInputs = [ aravis camera-info-manager dynamic-reconfigure image-transport message-runtime nodelet roscpp sensor-msgs std-msgs tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_aravis: A complete and comfortable GenICam (USB3Vision and GigEVision) based camera driver for ROS (ethernet and usb).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
