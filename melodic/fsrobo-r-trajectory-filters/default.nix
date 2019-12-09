
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, moveit-core, trajectory-msgs, pluginlib, catkin, moveit-ros-planning }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-trajectory-filters";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/melodic/fsrobo_r_trajectory_filters/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "14571dee2b64290f8c11e654994b76408a7485a0c9889a1b8506e4d6402c6aae";
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
