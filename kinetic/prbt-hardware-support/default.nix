
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, libmodbus, cmake-modules, pilz-testutils, sensor-msgs, catkin, message-filters, rostest, message-generation, message-runtime, canopen-chain-node, std-msgs, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-prbt-hardware-support";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_hardware_support/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "76991d64249444357643554e82ea9995e023ba43f1b902077c0e54108cbda733";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs libmodbus sensor-msgs message-filters message-generation canopen-chain-node std-msgs roscpp ];
  checkInputs = [ cmake-modules pilz-testutils rostest code-coverage rosunit ];
  propagatedBuildInputs = [ std-srvs sensor-msgs message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
