
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, rosconsole, catkin, roscpp, warehouse-ros, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-warehouse";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_warehouse/0.9.15-0.tar.gz;
    sha256 = "1b1a4d73e2d79dc74b9fac7b442725955c5f336308edcde28a743d4311981ee5";
  };

  propagatedBuildInputs = [ moveit-ros-planning rosconsole warehouse-ros tf roscpp ];
  nativeBuildInputs = [ moveit-ros-planning rosconsole warehouse-ros catkin tf roscpp ];

  meta = {
    description = ''Components of MoveIt! connecting to MongoDB'';
    #license = lib.licenses.BSD;
  };
}
