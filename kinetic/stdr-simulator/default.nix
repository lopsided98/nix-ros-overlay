
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, stdr-server, stdr-robot, stdr-launchers, catkin, stdr-samples, stdr-gui, stdr-msgs, stdr-parser, stdr-resources }:
buildRosPackage {
  pname = "ros-kinetic-stdr-simulator";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_simulator/0.3.2-0.tar.gz;
    sha256 = "0599f1356795693cfc1072c547085b8bb62cc639183a7d444e4fc936ac409230";
  };

  propagatedBuildInputs = [ stdr-server stdr-samples stdr-gui stdr-robot stdr-msgs stdr-parser stdr-launchers stdr-resources ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple, flexible and scalable 2D multi-robot simulator.'';
    #license = lib.licenses.GPLv3;
  };
}
