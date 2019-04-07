
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, orocos-kdl, pluginlib, trajectory-msgs, catkin, moveit-core }:
buildRosPackage {
  pname = "ros-melodic-industrial-trajectory-filters";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_trajectory_filters/0.7.0-0.tar.gz;
    sha256 = "ce903b69e6712c8ebe654ab523ee627a57881be2c218b5fdb2330d8150520298";
  };

  buildInputs = [ moveit-ros-planning moveit-core pluginlib orocos-kdl trajectory-msgs ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-core pluginlib orocos-kdl trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     ROS Industrial libraries/plugins for filtering trajectories.
   </p>
   <p>
     This package is part of the ROS Industrial program and contains libraries
     and moveit plugins for filtering robot trajectories.
   </p>'';
    #license = lib.licenses.BSD;
  };
}
