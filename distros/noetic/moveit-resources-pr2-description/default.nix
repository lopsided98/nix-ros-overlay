
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-pr2-description";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_pr2_description/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "9d004fa8beee829a196ad0cbacabd5cc3df0dadeed7d3ec18e129b0e53155492";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
