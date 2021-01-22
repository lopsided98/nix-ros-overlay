
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, controller-interface, controller-manager, cv-bridge, image-transport, pluginlib, roscpp, sensor-msgs, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-usb-cam-controllers";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/kinetic/usb_cam_controllers/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "a80034132c917cd10fa2ac8e47b7901e60917341982d7d4b5dad37fc1008fd71";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager controller-interface controller-manager cv-bridge image-transport pluginlib roscpp sensor-msgs usb-cam-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_controllers package'';
    license = with lib.licenses; [ mit ];
  };
}
