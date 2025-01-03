
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, rosconsole, roscpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-warehouse";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_warehouse/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "915d65a48f437d218fd31cd1e5f3fbcb659d0de7174d1ae939dd554203739975";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-ros-planning rosconsole roscpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Components of MoveIt connecting to MongoDB";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
