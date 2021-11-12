
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-pr2-description";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_pr2_description/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "4ab818bf5e2edeb7d0de2b95a05fb496f9996130300832173b179fc4cd043121";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
