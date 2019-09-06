
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, clang, libmodbus, cmake-modules, pilz-testutils, sensor-msgs, catkin, message-filters, rostest, message-generation, message-runtime, canopen-chain-node, std-msgs, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-hardware-support";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_hardware_support/0.5.7-1.tar.gz";
    name = "0.5.7-1.tar.gz";
    sha256 = "792869b7d011fa3c2cea12bd9cf51fa80ec514d0af78f3023426cb43ae1e2855";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs clang libmodbus sensor-msgs message-filters message-generation canopen-chain-node std-msgs roscpp ];
  checkInputs = [ cmake-modules pilz-testutils rostest code-coverage rosunit ];
  propagatedBuildInputs = [ std-srvs sensor-msgs message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
