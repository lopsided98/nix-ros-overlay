
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-planners-chomp, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners/1.0.1-0.tar.gz;
    sha256 = "7b6c3933c3a38cbe11dbf000c0de6e20ad752ce7718801039d28353ef6fbe02e";
  };

  propagatedBuildInputs = [ chomp-motion-planner moveit-planners-chomp moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapacakge that installs all available planners for MoveIt'';
    #license = lib.licenses.BSD;
  };
}
