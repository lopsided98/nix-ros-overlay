
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, pluginlib, catkin, usb-cam-hardware-interface, roscpp, nodelet }:
buildRosPackage {
  pname = "ros-melodic-usb-cam-hardware";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/melodic/usb_cam_hardware/0.0.4-0.tar.gz;
    sha256 = "29d9274d9b3cf8787c3f80c5354eb605608205118e6ccf56a2aabd26011f7b43";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface pluginlib nodelet usb-cam-hardware-interface roscpp ];
  nativeBuildInputs = [ controller-manager hardware-interface pluginlib catkin nodelet usb-cam-hardware-interface roscpp ];

  meta = {
    description = ''The usb_cam_hardware package'';
    #license = lib.licenses.TODO;
  };
}
