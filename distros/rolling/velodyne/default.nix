
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-rolling-velodyne";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/rolling/velodyne/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "a6084ead4e8ea72bc2ac1037dbe8c7f78ece97aed367eba48c73e5b4d2c1677a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ velodyne-driver velodyne-laserscan velodyne-msgs velodyne-pointcloud ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic ROS support for the Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
