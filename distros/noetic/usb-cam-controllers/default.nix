
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, controller-interface, controller-manager, cv-bridge, image-transport, pluginlib, roscpp, sensor-msgs, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-usb-cam-controllers";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/noetic/usb_cam_controllers/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "43433c266d8afe634fecb5efeb00e7808d503091075f2daf555227f5b51ece43";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager controller-interface controller-manager cv-bridge image-transport pluginlib roscpp sensor-msgs usb-cam-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_controllers package'';
    license = with lib.licenses; [ mit ];
  };
}
