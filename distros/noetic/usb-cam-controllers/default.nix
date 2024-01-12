
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, controller-interface, controller-manager, cv-bridge, image-transport, pluginlib, roscpp, sensor-msgs, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-usb-cam-controllers";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/noetic/usb_cam_controllers/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "d03a18132591acb321d86163fae2362d7477e9c6a7a33e6faad6f7cc385065af";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager controller-interface controller-manager cv-bridge image-transport pluginlib roscpp sensor-msgs usb-cam-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The usb_cam_controllers package'';
    license = with lib.licenses; [ mit ];
  };
}
