
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, moveit-core, trajectory-msgs, pluginlib, catkin, moveit-ros-planning }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-trajectory-filters";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_trajectory_filters/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "550312ba623b6490ccc903c2d9454dbdfb5a0c18509712a58a5355e57d74224f";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core trajectory-msgs orocos-kdl pluginlib moveit-ros-planning ];
  propagatedBuildInputs = [ moveit-core trajectory-msgs orocos-kdl pluginlib moveit-ros-planning ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''plugins for filtering trajectories.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
