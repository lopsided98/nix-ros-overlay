
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, catkin, cmake-modules, code-coverage, dynamic-reconfigure, libmodbus, message-filters, message-generation, message-runtime, pilz-msgs, pilz-testutils, pilz-utils, roscpp, rosservice, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-noetic-prbt-hardware-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/noetic/prbt_hardware_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "e52a0dd1a3c31542f3c232f31b7daff8a3edb0073b690d72cd1f0494daad37e2";
  };

  buildType = "catkin";
  buildInputs = [ canopen-chain-node catkin dynamic-reconfigure libmodbus message-filters message-generation pilz-utils tf2 tf2-geometry-msgs tf2-ros urdf ];
  checkInputs = [ cmake-modules code-coverage pilz-testutils rostest rosunit ];
  propagatedBuildInputs = [ message-runtime pilz-msgs roscpp rosservice sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like RUN_PERMITTED for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
