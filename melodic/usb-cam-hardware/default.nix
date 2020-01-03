
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, hardware-interface, nodelet, pluginlib, roscpp, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-usb-cam-hardware";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/melodic/usb_cam_hardware/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "29d9274d9b3cf8787c3f80c5354eb605608205118e6ccf56a2aabd26011f7b43";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager hardware-interface nodelet pluginlib roscpp usb-cam-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
