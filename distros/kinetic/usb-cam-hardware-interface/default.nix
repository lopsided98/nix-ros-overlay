
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-usb-cam-hardware-interface";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/kinetic/usb_cam_hardware_interface/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "e11f4c6f0c30937eeede02a02cfc7677e46746f2baf89283ac949abb2fbf79a3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware_interface package'';
    license = with lib.licenses; [ mit ];
  };
}
