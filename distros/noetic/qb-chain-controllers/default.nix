
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, geometry-msgs, interactive-markers, qb-chain-msgs, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, trac-ik-lib }:
buildRosPackage {
  pname = "ros-noetic-qb-chain-controllers";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/noetic/qb_chain_controllers/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "0cc99d8e9ba87bd9fcbb0eb83379e028b89e286d2877c32b633e26c3134dd97b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-interface geometry-msgs interactive-markers qb-chain-msgs roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros trac-ik-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the specific controllers for qbrobotics® kinematic structures, e.g. the qbdelta controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
