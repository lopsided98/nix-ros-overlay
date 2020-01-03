
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, catkin, cmake-modules, code-coverage, dynamic-reconfigure, libmodbus, message-filters, message-generation, message-runtime, pilz-msgs, pilz-testutils, pilz-utils, roscpp, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-melodic-prbt-hardware-support";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_hardware_support/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "bb949d904d7bd6ec6a352b6db288d598f49ad60dd7d1a2ae3bf061df5c53518b";
  };

  buildType = "catkin";
  buildInputs = [ canopen-chain-node dynamic-reconfigure libmodbus message-filters message-generation pilz-utils tf2 tf2-geometry-msgs tf2-ros urdf ];
  checkInputs = [ cmake-modules code-coverage pilz-testutils rostest rosunit ];
  propagatedBuildInputs = [ message-runtime pilz-msgs roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
