
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, hardware-interface, nodelet, pluginlib, roscpp, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-usb-cam-hardware";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/noetic/usb_cam_hardware/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "fe91fb847b79fe425a444a31d35f306c884e5cfbe20c2be3a661a6b6ce75d339";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager hardware-interface nodelet pluginlib roscpp usb-cam-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware package'';
    license = with lib.licenses; [ mit ];
  };
}
