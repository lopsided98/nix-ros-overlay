
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, catkin, cmake-modules, code-coverage, dynamic-reconfigure, libmodbus, message-filters, message-generation, message-runtime, pilz-msgs, pilz-testutils, pilz-utils, roscpp, rosservice, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-melodic-prbt-hardware-support";
  version = "0.5.23-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_hardware_support/0.5.23-1.tar.gz";
    name = "0.5.23-1.tar.gz";
    sha256 = "cae651e8cca5fb59f8a85526191d845a1096a967859de5e70847eedf4892bef4";
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
