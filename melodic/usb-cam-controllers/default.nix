
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, controller-interface, controller-manager, cv-bridge, image-transport, pluginlib, roscpp, sensor-msgs, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-usb-cam-controllers";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/melodic/usb_cam_controllers/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "e4c15169d9f29ff1ed5ac782395a6f6251130a54c23b42be7a81ed26c0ef7ce6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager controller-interface controller-manager cv-bridge image-transport pluginlib roscpp sensor-msgs usb-cam-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_controllers package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
