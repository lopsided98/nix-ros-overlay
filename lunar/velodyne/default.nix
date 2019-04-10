
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-laserscan, velodyne-driver, catkin, velodyne-pointcloud, velodyne-msgs }:
buildRosPackage {
  pname = "ros-lunar-velodyne";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/lunar/velodyne/1.5.2-0.tar.gz;
    sha256 = "d34504b9ed6dacc5abfada2e2670a918c1bcfa17018ec51ae5f5312808725fe1";
  };

  propagatedBuildInputs = [ velodyne-driver velodyne-pointcloud velodyne-laserscan velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic ROS support for the Velodyne 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
