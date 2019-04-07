
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, camera-info-manager, image-transport, sensor-msgs, catkin, cv-bridge, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-melodic-flir-boson-usb";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/astuff/flir_boson_usb-release/archive/release/melodic/flir_boson_usb/1.2.0-0.tar.gz;
    sha256 = "79c3e1f53669699fa6af61305dd25dfabddbf213bfa36df3b3419950dcf3568f";
  };

  buildInputs = [ cv-bridge roslint camera-info-manager image-transport sensor-msgs nodelet roscpp ];
  propagatedBuildInputs = [ cv-bridge camera-info-manager image-transport sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple USB camera driver for the FLIR BOSON using OpenCV'';
    #license = lib.licenses.MIT;
  };
}
