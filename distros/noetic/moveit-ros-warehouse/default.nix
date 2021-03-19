
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, rosconsole, roscpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-warehouse";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_warehouse/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "20aaddd5a34ba135f1dc2af1c81fd6bca86d7e7edd2d9a884da576fa6cb4419d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-planning rosconsole roscpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
