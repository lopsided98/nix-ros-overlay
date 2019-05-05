
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, libmodbus, cmake-modules, pilz-testutils, catkin, message-filters, rostest, message-generation, message-runtime, std-msgs, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-hardware-support";
  version = "0.5.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_hardware_support/0.5.3-1.tar.gz;
    sha256 = "8833ee4869bd8c34bf8d4b9d76ec465235de9121403da7989ed73c31f648d5f0";
  };

  buildInputs = [ std-srvs libmodbus message-filters message-generation std-msgs roscpp ];
  checkInputs = [ cmake-modules pilz-testutils rostest code-coverage rosunit ];
  propagatedBuildInputs = [ std-msgs std-srvs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
