
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, stdr-server, stdr-robot, catkin, rviz, stdr-gui, stdr-resources }:
buildRosPackage {
  pname = "ros-kinetic-stdr-launchers";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_launchers/0.3.2-0.tar.gz;
    sha256 = "04d61a4dc59073b1ac1e61b41ec4f14c29e497748ea3a3d72ff5b316f918a8b2";
  };

  propagatedBuildInputs = [ stdr-server rviz stdr-gui stdr-robot stdr-resources ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files, to easily bringup server, robots, guis'';
    #license = lib.licenses.GPLv3;
  };
}
