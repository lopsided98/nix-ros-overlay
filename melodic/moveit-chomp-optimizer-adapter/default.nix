
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, chomp-motion-planner, moveit-core }:
buildRosPackage {
  pname = "ros-melodic-moveit-chomp-optimizer-adapter";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_chomp_optimizer_adapter/1.0.1-0.tar.gz;
    sha256 = "b9065477079418a14d4a7ba689e48b048557070f3abe99b9ebe80e239d1cf461";
  };

  buildInputs = [ chomp-motion-planner pluginlib moveit-core ];
  propagatedBuildInputs = [ chomp-motion-planner pluginlib moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    #license = lib.licenses.BSD;
  };
}
