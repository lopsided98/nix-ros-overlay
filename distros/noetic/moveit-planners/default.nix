
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-planners-chomp, moveit-planners-ompl, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "ff3fd07c0a76444e261fa3c7b0fa0c8273a0b35f2ca2aec0571aa018e67f9995";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-planners-chomp moveit-planners-ompl pilz-industrial-motion-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Metapacakge that installs all available planners for MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
