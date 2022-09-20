
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, geometry-msgs, interactive-markers, qb-chain-msgs, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, trac-ik-lib }:
buildRosPackage {
  pname = "ros-noetic-qb-chain-controllers";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/noetic/qb_chain_controllers/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "0918717350f04738e900128dfb7785a82ba24e24210c4c18eb9c09d1d98bfd91";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-msgs controller-interface geometry-msgs interactive-markers qb-chain-msgs roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros trac-ik-lib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the specific controllers for qbrobotics® kinematic structures, e.g. the qbdelta controller.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
