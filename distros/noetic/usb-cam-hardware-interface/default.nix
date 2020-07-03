
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-usb-cam-hardware-interface";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/noetic/usb_cam_hardware_interface/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "cbc06c6cab14d3f075992784930cf1d21463788f5c0330e340603d6ea3e251d6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware_interface package'';
    license = with lib.licenses; [ mit ];
  };
}
