
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, rosconsole, roscpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-warehouse";
  version = "1.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_warehouse/1.1.11-1.tar.gz";
    name = "1.1.11-1.tar.gz";
    sha256 = "0cc161324d2f1e41f1ef9f111ad3ffc4b8f4acc0bfdcad5f09c495a8ed27783e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-ros-planning rosconsole roscpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
