
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-moveit-chomp-optimizer-adapter";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_chomp_optimizer_adapter/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "94e8b5e31cee69dc078f1703a7fe29601243784662e96b716f7726c5bccb2504";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
