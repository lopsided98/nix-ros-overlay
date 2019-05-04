
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, pluginlib, camera-info-manager, image-transport, sensor-msgs, cv-bridge, catkin, usb-cam-hardware-interface, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-usb-cam-controllers";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/kinetic/usb_cam_controllers/0.0.3-0.tar.gz;
    sha256 = "a3f88938c7ba79e961dcec2ed5921cebfa88e94c857ac4855a8900bc650b1d75";
  };

  buildInputs = [ controller-manager pluginlib camera-info-manager image-transport sensor-msgs cv-bridge usb-cam-hardware-interface controller-interface roscpp ];
  propagatedBuildInputs = [ controller-manager pluginlib camera-info-manager image-transport sensor-msgs cv-bridge usb-cam-hardware-interface controller-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_controllers package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
