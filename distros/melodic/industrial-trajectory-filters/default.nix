
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, moveit-core, moveit-ros-planning, orocos-kdl, pluginlib, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-industrial-trajectory-filters";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_trajectory_filters/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "309487fd3ede43c60b560ba7ab53c62114db02abeab929d819ba8d859de0f75d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ class-loader moveit-core moveit-ros-planning orocos-kdl pluginlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     ROS Industrial libraries/plugins for filtering trajectories.
   </p>
   <p>
     This package is part of the ROS Industrial program and contains libraries
     and moveit plugins for filtering robot trajectories.
   </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
