
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, interactive-markers, qb-device-hardware-interface, roscpp, tf2, tf2-geometry-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-move-hardware-interface";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move_hardware_interface/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "1882f57bb9cde42e67e10bd809e50e5bfb53c285429dbce6092c7296458e2849";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox hardware-interface interactive-markers qb-device-hardware-interface roscpp tf2 tf2-geometry-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
