
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-benchmarks, moveit-ros-visualization, moveit-ros-move-group, moveit-ros-robot-interaction, catkin, moveit-ros-manipulation, moveit-ros-warehouse, moveit-ros-perception, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "8b551243c80a94f093cc3dfb6039e7f18ff80de60972a1e942bb2c2f9ff10fd8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-benchmarks moveit-ros-move-group moveit-ros-visualization moveit-ros-robot-interaction moveit-ros-manipulation moveit-ros-warehouse moveit-ros-perception moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
