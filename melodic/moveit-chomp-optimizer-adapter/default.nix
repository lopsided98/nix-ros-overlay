
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, pluginlib, chomp-motion-planner, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-chomp-optimizer-adapter";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_chomp_optimizer_adapter/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "4bb3527f09b0eacd6fb565b2f967f166c4c5e7cc38f94861701e61e6d3fc82ea";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core pluginlib chomp-motion-planner ];
  propagatedBuildInputs = [ moveit-core pluginlib chomp-motion-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
