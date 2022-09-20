
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-interface, geometry-msgs, interactive-markers, qb-chain-msgs, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, trac-ik-lib }:
buildRosPackage {
  pname = "ros-melodic-qb-chain-controllers";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/melodic/qb_chain_controllers/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "e3014675e32d30d33f52650b4f48c5d69e3fbc307b2f8243f6bc416b6422c8c3";
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
