
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, roscpp, interactive-markers, eigen-conversions, tf }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-robot-interaction";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_robot_interaction/0.9.12-1.tar.gz;
    sha256 = "b398907cd96bae96d00710fc37a299090681db62ac1510cf698b2e5f2759191c";
  };

  buildInputs = [ moveit-ros-planning interactive-markers pluginlib tf eigen-conversions roscpp ];
  propagatedBuildInputs = [ moveit-ros-planning interactive-markers pluginlib tf eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt that offer interaction via interactive markers'';
    #license = lib.licenses.BSD;
  };
}
