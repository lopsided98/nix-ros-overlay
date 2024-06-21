
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, rosconsole, roscpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-warehouse";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_warehouse/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "5cd05e26f69d403b64635a3b4f6242af3e11ce24d74dbe9d666488687db1ce3f";
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
