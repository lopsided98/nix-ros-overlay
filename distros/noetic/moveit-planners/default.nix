
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-planners-chomp, moveit-planners-ompl, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "6543d6f8c2e1cc2a2f0a370438f9e9fb6683de7a2fc1bb2632ea5d506d3303dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ chomp-motion-planner moveit-planners-chomp moveit-planners-ompl pilz-industrial-motion-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapacakge that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
