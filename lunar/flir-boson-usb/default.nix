
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, camera-info-manager, image-transport, sensor-msgs, catkin, cv-bridge, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-lunar-flir-boson-usb";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/astuff/flir_boson_usb-release/archive/release/lunar/flir_boson_usb/1.2.0-0.tar.gz;
    sha256 = "b45b38e4f086748b3f806db8288767c10b4aab0676edf637b9030d19b738a2ba";
  };

  buildInputs = [ cv-bridge roslint camera-info-manager image-transport sensor-msgs nodelet roscpp ];
  propagatedBuildInputs = [ cv-bridge camera-info-manager image-transport sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple USB camera driver for the FLIR BOSON using OpenCV'';
    #license = lib.licenses.MIT;
  };
}
