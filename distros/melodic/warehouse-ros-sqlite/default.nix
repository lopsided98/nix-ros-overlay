
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, roscpp, rostest, rostime, sqlite, warehouse-ros }:
buildRosPackage {
  pname = "ros-melodic-warehouse-ros-sqlite";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/warehouse_ros_sqlite-release/archive/release/melodic/warehouse_ros_sqlite/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "dcdad8deebb3ee56669b1e27bbde2bb3d923937108b0a590ede4b69eab89e181";
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
