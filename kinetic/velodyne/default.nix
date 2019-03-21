
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-laserscan, velodyne-driver, catkin, velodyne-pointcloud, velodyne-msgs }:
buildRosPackage {
  pname = "ros-kinetic-velodyne";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne/1.5.2-0.tar.gz;
    sha256 = "1a6d7dfd7cab5f1c604e46faff944e3f3a4d0fbcd1fa1534f592240399ce98e0";
  };

  propagatedBuildInputs = [ velodyne-driver velodyne-pointcloud velodyne-laserscan velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic ROS support for the Velodyne 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
