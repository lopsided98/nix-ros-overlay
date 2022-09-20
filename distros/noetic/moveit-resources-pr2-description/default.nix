
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-pr2-description";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_pr2_description/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "df362edff68e3769c672f3105d63ae675d27e0f3f15a2d54f6e79ab00aa14aa1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
