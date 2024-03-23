
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aravis, camera-info-manager, catkin, diagnostic-msgs, dynamic-reconfigure, glib, image-transport, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-camera-aravis";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/FraunhoferIOSB/camera_aravis-release/archive/release/noetic/camera_aravis/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "f3f5e83315b871e70a00a229ecb6a0fea941d2ca335f2f01d2aeeb53ccf79b2b";
  };

  buildType = "catkin";
  buildInputs = [ catkin glib message-generation ];
  propagatedBuildInputs = [ aravis camera-info-manager diagnostic-msgs dynamic-reconfigure image-transport message-runtime nodelet roscpp sensor-msgs std-msgs tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "camera_aravis: A complete and comfortable GenICam (USB3Vision and GigEVision) based camera driver for ROS (ethernet and usb).";
    license = with lib.licenses; [ "LGPL-2.0-only" ];
  };
}
