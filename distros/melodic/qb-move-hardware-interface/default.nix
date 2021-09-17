
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, interactive-markers, qb-device-hardware-interface, roscpp, tf2, tf2-geometry-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-move-hardware-interface";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move_hardware_interface/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "aa01391e426a4afa023e3255ecceadd74fdbd0809d4f90d511a4b28d5b2686cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-toolbox hardware-interface interactive-markers qb-device-hardware-interface roscpp tf2 tf2-geometry-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
