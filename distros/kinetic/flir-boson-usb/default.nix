
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, image-transport, nodelet, roscpp, roslint, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-flir-boson-usb";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/flir_boson_usb-release/archive/release/kinetic/flir_boson_usb/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "acc7d8181cb7b0caa72414bc70e99e76583669a799914a6f1c0a95867df816fc";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple USB camera driver for the FLIR BOSON using OpenCV'';
    license = with lib.licenses; [ mit ];
  };
}
