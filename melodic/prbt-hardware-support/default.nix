
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pilz-testutils, message-filters, message-generation, message-runtime, std-srvs, tf2-geometry-msgs, catkin, tf2-ros, urdf, canopen-chain-node, std-msgs, roscpp, libmodbus, cmake-modules, sensor-msgs, tf2, rostest, dynamic-reconfigure, code-coverage, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-hardware-support";
  version = "0.5.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_hardware_support/0.5.10-1.tar.gz";
    name = "0.5.10-1.tar.gz";
    sha256 = "34b6e82ba00b42194306e5725e8d2c11cf86961a3d393ad11dbc77049f322167";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs libmodbus tf2-geometry-msgs sensor-msgs message-filters tf2-ros tf2 message-generation urdf canopen-chain-node dynamic-reconfigure std-msgs roscpp ];
  checkInputs = [ cmake-modules pilz-testutils rostest code-coverage rosunit ];
  propagatedBuildInputs = [ std-srvs sensor-msgs message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
