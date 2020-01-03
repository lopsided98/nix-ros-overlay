
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-usb-cam-hardware-interface";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/melodic/usb_cam_hardware_interface/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "27863a2c68f5c59653e0625b1aafd1edb8f12f90c4439176db8a325a26f79b61";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware_interface package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
