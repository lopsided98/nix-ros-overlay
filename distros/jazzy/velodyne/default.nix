
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-jazzy-velodyne";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/jazzy/velodyne/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "a441fca57a6ad275c09d2ae4ff9685f1e0e486bbbfe6e8c6cd67ffeddc4e0034";
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
