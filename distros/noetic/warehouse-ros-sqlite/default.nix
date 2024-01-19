
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, roscpp, rostest, rostime, sqlite, warehouse-ros }:
buildRosPackage {
  pname = "ros-noetic-warehouse-ros-sqlite";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/warehouse_ros_sqlite-release/archive/release/noetic/warehouse_ros_sqlite/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "55c1b940c50612b756897cd167512990caad3e2f26b79f7f20574fb0e49616fe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ class-loader roscpp rostime sqlite warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of warehouse_ros for sqlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
