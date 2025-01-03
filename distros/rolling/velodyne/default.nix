
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-rolling-velodyne";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/rolling/velodyne/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "981cd515c7e29111fab2c535c528089c8762e6f09bcd0434de5aee08defb9e89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ velodyne-driver velodyne-laserscan velodyne-msgs velodyne-pointcloud ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic ROS support for the Velodyne 3D LIDARs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
