
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-noetic-chomp-motion-planner";
  version = "1.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/chomp_motion_planner/1.1.11-1.tar.gz";
    name = "1.1.11-1.tar.gz";
    sha256 = "85dd9768021a63512b2411ae6a4bbd23dc171091a50499d7a1bd92839f1fdd7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''chomp_motion_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
