
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, libmodbus, cmake-modules, pilz-testutils, catkin, message-filters, rostest, message-generation, message-runtime, std-msgs, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-hardware-support";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_hardware_support/0.5.2-0.tar.gz;
    sha256 = "544485f23cfc387fc67fbba6ddb48f77b2f27c1c2fe2abc01c19ef31bd392671";
  };

  checkInputs = [ rostest cmake-modules pilz-testutils code-coverage rosunit ];
  propagatedBuildInputs = [ std-msgs std-srvs roscpp message-runtime ];
  nativeBuildInputs = [ std-srvs message-generation libmodbus std-msgs catkin roscpp message-filters ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    #license = lib.licenses.LGPLv3;
  };
}
