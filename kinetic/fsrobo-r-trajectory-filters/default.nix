
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, orocos-kdl, trajectory-msgs, catkin, moveit-core }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-trajectory-filters";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_trajectory_filters/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "3e2516924c5431636f3577b0b2de31ccc7386127299f612315bb5d93635e92a5";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning orocos-kdl pluginlib trajectory-msgs moveit-core ];
  propagatedBuildInputs = [ moveit-ros-planning orocos-kdl pluginlib trajectory-msgs moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''plugins for filtering trajectories.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
