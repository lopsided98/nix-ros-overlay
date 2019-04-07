
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, control-toolbox, catkin, qb-device-hardware-interface, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-hand-hardware-interface";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand_hardware_interface/2.0.0-1.tar.gz;
    sha256 = "88138eb2c19395bcb633d026f37a60414f12797a08392c17d9cb967f13bef9c5";
  };

  buildInputs = [ hardware-interface transmission-interface control-toolbox roscpp qb-device-hardware-interface ];
  propagatedBuildInputs = [ hardware-interface transmission-interface control-toolbox roscpp qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbhand device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
