
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, libmodbus, cmake-modules, pilz-testutils, catkin, message-filters, rostest, message-generation, message-runtime, std-msgs, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-prbt-hardware-support";
  version = "0.4.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_hardware_support/0.4.7-0.tar.gz;
    sha256 = "a0361cd1a5c469e499da155fc72b17579b17b6843f489670d320029c2724d6d2";
  };

  buildInputs = [ std-srvs message-generation libmodbus std-msgs roscpp message-filters ];
  checkInputs = [ rostest cmake-modules pilz-testutils code-coverage rosunit ];
  propagatedBuildInputs = [ std-msgs std-srvs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    #license = lib.licenses.LGPLv3;
  };
}
