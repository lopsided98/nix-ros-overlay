
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-planners-chomp, moveit-planners-ompl, pilz-industrial-motion-planner }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners";
  version = "1.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners/1.1.15-1.tar.gz";
    name = "1.1.15-1.tar.gz";
    sha256 = "b648e4d899f8977cb8ba10dd27e25a4daecab4ffe05f10b013c46e34276eee4c";
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
