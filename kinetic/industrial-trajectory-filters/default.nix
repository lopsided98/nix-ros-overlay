
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, orocos-kdl, trajectory-msgs, catkin, moveit-core }:
buildRosPackage {
  pname = "ros-kinetic-industrial-trajectory-filters";
  version = "0.7.0";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_trajectory_filters/0.7.0-0.tar.gz";
    name = "0.7.0-0.tar.gz";
    sha256 = "967c02ff7e7e92d017fad6bb74fe4be2bcc3ceb98dcc750c4074bfac27772a8e";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning orocos-kdl pluginlib trajectory-msgs moveit-core ];
  propagatedBuildInputs = [ moveit-ros-planning orocos-kdl pluginlib trajectory-msgs moveit-core ];
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
