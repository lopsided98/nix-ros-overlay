
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, chomp-motion-planner, catkin, moveit-planners-chomp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-planners";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_planners/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "8430a18ce5057b1cfbbe3ad2a468a537d7762671d28347be02e6f1589b3f0801";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-planners-ompl chomp-motion-planner moveit-planners-chomp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapacakge that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
