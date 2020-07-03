
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, hardware-interface, nodelet, pluginlib, roscpp, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-usb-cam-hardware";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/noetic/usb_cam_hardware/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "7b95aab1c79774b281832dbbbd53e2adb2e25fabc203f24f4062a95a31d807e1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager hardware-interface nodelet pluginlib roscpp usb-cam-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_hardware package'';
    license = with lib.licenses; [ mit ];
  };
}
