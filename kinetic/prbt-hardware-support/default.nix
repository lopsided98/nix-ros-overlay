
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, catkin, cmake-modules, code-coverage, libmodbus, message-filters, message-generation, message-runtime, pilz-testutils, roscpp, rostest, rosunit, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-prbt-hardware-support";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_hardware_support/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "76991d64249444357643554e82ea9995e023ba43f1b902077c0e54108cbda733";
  };

  buildType = "catkin";
  buildInputs = [ canopen-chain-node libmodbus message-filters message-generation ];
  checkInputs = [ cmake-modules code-coverage pilz-testutils rostest rosunit ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
