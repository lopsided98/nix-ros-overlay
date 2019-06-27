
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, libmodbus, cmake-modules, pilz-testutils, sensor-msgs, catkin, message-filters, rostest, message-generation, message-runtime, canopen-chain-node, std-msgs, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-hardware-support";
  version = "0.5.6-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_hardware_support/0.5.6-1.tar.gz;
    sha256 = "fa6937adc062d26cd7dd7649a30566ed4999d17eca99a6f5b0ff8191e99c7dcf";
  };

  buildInputs = [ std-srvs libmodbus sensor-msgs message-filters message-generation canopen-chain-node std-msgs roscpp ];
  checkInputs = [ cmake-modules pilz-testutils rostest code-coverage rosunit ];
  propagatedBuildInputs = [ std-srvs sensor-msgs message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
