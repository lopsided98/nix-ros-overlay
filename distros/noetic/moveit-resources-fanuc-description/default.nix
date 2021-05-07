
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-fanuc-description";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_fanuc_description/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "e96e572ca7e9e2c3f4f33f879adf0b9656c0f3b72735e214af1693e687d771c2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fanuc Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
