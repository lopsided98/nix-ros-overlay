
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-galactic-velodyne";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/galactic/velodyne/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "0894c9018ba5d821f173eefb55e18138fb5f872aaf3213b148e7c791ac938f1e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ velodyne-driver velodyne-laserscan velodyne-msgs velodyne-pointcloud ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic ROS support for the Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
