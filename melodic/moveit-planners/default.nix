
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, chomp-motion-planner, catkin, moveit-planners-chomp }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d8a75310db98a3d553e69a95401e22b704290dbad14be446fa3c0b1aa19e30bf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-planners-ompl chomp-motion-planner moveit-planners-chomp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapacakge that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
