
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, roscpp, rostest, rostime, sqlite, warehouse-ros }:
buildRosPackage {
  pname = "ros-noetic-warehouse-ros-sqlite";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/warehouse_ros_sqlite-release/archive/release/noetic/warehouse_ros_sqlite/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "48a686292547869c9c3cad349ed491926355b93fd9aec263544f3645f714b06e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib roscpp rostime sqlite warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Implementation of warehouse_ros for sqlite";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
