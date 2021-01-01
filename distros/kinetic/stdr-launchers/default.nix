
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, stdr-gui, stdr-resources, stdr-robot, stdr-server }:
buildRosPackage {
  pname = "ros-kinetic-stdr-launchers";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_launchers/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "04d61a4dc59073b1ac1e61b41ec4f14c29e497748ea3a3d72ff5b316f918a8b2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rviz stdr-gui stdr-resources stdr-robot stdr-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files, to easily bringup server, robots, guis'';
    license = with lib.licenses; [ gpl3 ];
  };
}
