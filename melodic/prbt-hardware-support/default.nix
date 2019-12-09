
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, pilz-testutils, rosunit, tf2, rostest, sensor-msgs, dynamic-reconfigure, cmake-modules, tf2-geometry-msgs, tf2-ros, libmodbus, message-filters, std-msgs, std-srvs, catkin, canopen-chain-node, roscpp, pilz-utils, message-generation, code-coverage, message-runtime, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-prbt-hardware-support";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_hardware_support/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "bb949d904d7bd6ec6a352b6db288d598f49ad60dd7d1a2ae3bf061df5c53518b";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters libmodbus urdf dynamic-reconfigure std-msgs std-srvs roscpp tf2-geometry-msgs canopen-chain-node tf2 pilz-utils message-generation pilz-msgs tf2-ros ];
  checkInputs = [ pilz-testutils code-coverage cmake-modules rosunit rostest ];
  propagatedBuildInputs = [ sensor-msgs std-msgs std-srvs roscpp message-runtime pilz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control hardware functions of the PRBT manipulator like STO for Stop1 functionality.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
