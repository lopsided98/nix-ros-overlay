
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, control-toolbox, catkin, transmission-interface, roscpp, qb-device-hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-hardware-interface";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_hardware_interface/2.0.0-0.tar.gz;
    sha256 = "01b6c828e8cc8df099f7b48214ccd72d84edef8b95422c8b160eee138dba1aed";
  };

  propagatedBuildInputs = [ hardware-interface transmission-interface control-toolbox roscpp qb-device-hardware-interface ];
  nativeBuildInputs = [ hardware-interface transmission-interface control-toolbox catkin roscpp qb-device-hardware-interface ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
