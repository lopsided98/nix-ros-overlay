
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, doosan-robotics, catkin }:
buildRosPackage {
  pname = "ros-kinetic-doosan-robot";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/doosan_robot/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "7724053421f1d37f56a1b37112733fdedb50eacceeda7636f07672ad4e8db77c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ doosan-robotics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for Doosan Robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
