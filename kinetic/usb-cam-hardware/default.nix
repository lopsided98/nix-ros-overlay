
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, usb-cam-hardware-interface, controller-manager, hardware-interface, pluginlib, catkin, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-usb-cam-hardware";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/kinetic/usb_cam_hardware/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "e7cdc34a962eb471e116d8cda31ab920b9422588d0b5b971090c3003a1cef35f";
  };

  buildType = "catkin";
  buildInputs = [ usb-cam-hardware-interface controller-manager hardware-interface pluginlib nodelet roscpp ];
  propagatedBuildInputs = [ usb-cam-hardware-interface controller-manager hardware-interface pluginlib nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
