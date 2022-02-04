
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-planners-chomp, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "7bd95dab6f83fe637cb3b464697a703ec6b430f0cfb552a6ecf8a59d37ccdb16";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ chomp-motion-planner moveit-planners-chomp moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapacakge that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
