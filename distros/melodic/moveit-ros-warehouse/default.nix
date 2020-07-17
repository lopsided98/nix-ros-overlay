
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, rosconsole, roscpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-warehouse";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_warehouse/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "b0c96c7cbac60eaffbbb65d3458db4fe722ec84a316ab8334c9d6b32f8393d5a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-planning rosconsole roscpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
