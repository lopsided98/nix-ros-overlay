
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, control-toolbox, catkin, qb-device-hardware-interface, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-lunar-qb-move-hardware-interface";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/lunar/qb_move_hardware_interface/2.0.0-1.tar.gz;
    sha256 = "4cbf9517de177039e9d3f9ac95cda13591e7584d11bf83013903b4cc5051edb1";
  };

  buildInputs = [ hardware-interface transmission-interface control-toolbox roscpp qb-device-hardware-interface ];
  propagatedBuildInputs = [ hardware-interface transmission-interface control-toolbox roscpp qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
