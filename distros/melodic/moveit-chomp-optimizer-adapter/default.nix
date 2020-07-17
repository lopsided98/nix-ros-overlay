
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, pluginlib }:
buildRosPackage {
  pname = "ros-melodic-moveit-chomp-optimizer-adapter";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_chomp_optimizer_adapter/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "936e6e15d721ea052ea25ae7b72c4718883c30d750b4e6b64b8b4943f49b6227";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
