
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, qb-device-hardware-interface, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-hand-hardware-interface";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand_hardware_interface/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "a91b53d027cfa0364a66cb84b19d7a0dacaea02967ecf59517031b0c7d43d13a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox hardware-interface qb-device-hardware-interface roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
