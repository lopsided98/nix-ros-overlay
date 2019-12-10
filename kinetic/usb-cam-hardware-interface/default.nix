
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-usb-cam-hardware-interface";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/kinetic/usb_cam_hardware_interface/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "354d24284eee974c217e6c800c13dce30a348688e35558ca6aad9e857acd8d2e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware_interface package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
