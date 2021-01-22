
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, catkin, cmake-modules, code-coverage, dynamic-reconfigure, libmodbus, message-filters, message-generation, message-runtime, pilz-testutils, pilz-utils, roscpp, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-kinetic-prbt-hardware-support";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_hardware_support/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "ebf058fc2e36776d1e264b417192edb329bc3db25546829803d6cf059003e8fc";
  };

  buildType = "catkin";
  buildInputs = [ canopen-chain-node dynamic-reconfigure libmodbus message-filters message-generation pilz-utils tf2 tf2-geometry-msgs tf2-ros urdf ];
  checkInputs = [ cmake-modules code-coverage pilz-testutils rostest rosunit ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
