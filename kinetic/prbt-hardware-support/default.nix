
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, libmodbus, cmake-modules, pilz-testutils, catkin, message-filters, rostest, message-generation, message-runtime, std-msgs, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-prbt-hardware-support";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_hardware_support/0.4.8-0.tar.gz;
    sha256 = "8dbb78e640f4c61cabaace0423de122bda7cd1c0b827c7caa94e93cdd5e47b84";
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
