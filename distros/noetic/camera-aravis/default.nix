
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aravis, camera-info-manager, catkin, dynamic-reconfigure, glib, image-transport, message-generation, message-runtime, nodelet, roscpp, sensor-msgs, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-camera-aravis";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/FraunhoferIOSB/camera_aravis-release/archive/release/noetic/camera_aravis/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "a186ad55b2a74110cf821cd72c0fa3de1b8798b8880569d155a3c82637ae9b21";
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
