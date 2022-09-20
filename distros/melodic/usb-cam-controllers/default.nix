
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, controller-interface, controller-manager, cv-bridge, image-transport, pluginlib, roscpp, sensor-msgs, usb-cam-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-usb-cam-controllers";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/yoshito-n-students/usb_cam_hardware-release/archive/release/melodic/usb_cam_controllers/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "1f3b3500161706be6f2420612ecfff387942aa71cd1cc755da4c40267c707891";
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
