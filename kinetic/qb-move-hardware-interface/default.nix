
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, tf2-geometry-msgs, control-toolbox, catkin, tf2, interactive-markers, qb-device-hardware-interface, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-hardware-interface";
  version = "2.1.2-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_hardware_interface/2.1.2-1.tar.gz;
    sha256 = "2e8a458b4f18e17619145fc5b59cbbb43a9dd5f302c4617204fe7077ee7007ec";
  };

  buildInputs = [ hardware-interface tf2-geometry-msgs control-toolbox tf2 interactive-markers transmission-interface roscpp qb-device-hardware-interface ];
  propagatedBuildInputs = [ hardware-interface tf2-geometry-msgs control-toolbox tf2 interactive-markers transmission-interface roscpp qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
