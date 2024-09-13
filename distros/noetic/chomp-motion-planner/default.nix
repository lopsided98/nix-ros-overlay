
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-noetic-chomp-motion-planner";
  version = "1.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/chomp_motion_planner/1.1.15-1.tar.gz";
    name = "1.1.15-1.tar.gz";
    sha256 = "3a6bea2898773940b75930fe4f83687c2316314a86726186be979a75b95f0dca";
  };

  buildType = "catkin";
  buildInputs = [ catkin moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "chomp_motion_planner";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
