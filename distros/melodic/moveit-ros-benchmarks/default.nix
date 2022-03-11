
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, moveit-ros-warehouse, pluginlib, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-benchmarks";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_benchmarks/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "f98440d74f483ad433009a1cfcf368f64311c15c8a4dd76d9b20846e554cc2db";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-warehouse pluginlib roscpp tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
