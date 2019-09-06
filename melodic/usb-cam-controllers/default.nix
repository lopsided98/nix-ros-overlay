
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, pluginlib, camera-info-manager, image-transport, sensor-msgs, cv-bridge, catkin, usb-cam-hardware-interface, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-usb-cam-controllers";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/melodic/usb_cam_controllers/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "e4c15169d9f29ff1ed5ac782395a6f6251130a54c23b42be7a81ed26c0ef7ce6";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager pluginlib camera-info-manager image-transport sensor-msgs cv-bridge usb-cam-hardware-interface controller-interface roscpp ];
  propagatedBuildInputs = [ controller-manager pluginlib camera-info-manager image-transport sensor-msgs cv-bridge usb-cam-hardware-interface controller-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_controllers package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
