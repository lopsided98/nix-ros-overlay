
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, image-transport, nodelet, roscpp, roslint, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-flir-boson-usb";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/flir_boson_usb-release/archive/release/melodic/flir_boson_usb/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "8c1bec8b2961607d526d51d6ab068534865aee4f71a1a66c326f6bd552bbdedb";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple USB camera driver for the FLIR BOSON using OpenCV'';
    license = with lib.licenses; [ mit ];
  };
}
