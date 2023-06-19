
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-planners-chomp, moveit-planners-ompl, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "ee829e7aca898e73571b6eb8c9468946643dcff0ca7fcfc595d76bccc19c1742";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-planners-chomp moveit-planners-ompl pilz-industrial-motion-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapacakge that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
