
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, stdr-gui, stdr-launchers, stdr-msgs, stdr-parser, stdr-resources, stdr-robot, stdr-samples, stdr-server }:
buildRosPackage {
  pname = "ros-kinetic-stdr-simulator";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_simulator/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "0599f1356795693cfc1072c547085b8bb62cc639183a7d444e4fc936ac409230";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ stdr-gui stdr-launchers stdr-msgs stdr-parser stdr-resources stdr-robot stdr-samples stdr-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple, flexible and scalable 2D multi-robot simulator.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
