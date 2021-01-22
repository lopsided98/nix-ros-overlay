
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-fanuc-description";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_fanuc_description/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "82c572223797dc6ffb8613a1c80c61d287c356fa56c07193cafc26576cebf290";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fanuc Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
