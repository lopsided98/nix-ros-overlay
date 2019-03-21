
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, camera-info-manager, image-transport, sensor-msgs, cv-bridge, catkin, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-flir-boson-usb";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/astuff/flir_boson_usb-release/archive/release/kinetic/flir_boson_usb/1.2.0-0.tar.gz;
    sha256 = "3201b7e69e60ccf4e640eb4f9d98d79de893b23a188a1408667958ae43f8704c";
  };

  propagatedBuildInputs = [ cv-bridge camera-info-manager image-transport sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin cv-bridge roslint camera-info-manager image-transport sensor-msgs nodelet roscpp ];

  meta = {
    description = ''A simple USB camera driver for the FLIR BOSON using OpenCV'';
    #license = lib.licenses.MIT;
  };
}
