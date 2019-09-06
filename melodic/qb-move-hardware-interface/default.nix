
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, control-toolbox, catkin, transmission-interface, roscpp, qb-device-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-move-hardware-interface";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move_hardware_interface/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f286bcac0739c1e7f8572d5e8abd413d25b541e3d54efa3b9805482543cd9c97";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface control-toolbox transmission-interface roscpp qb-device-hardware-interface ];
  propagatedBuildInputs = [ hardware-interface control-toolbox transmission-interface roscpp qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
