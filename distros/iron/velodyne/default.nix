
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-iron-velodyne";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/iron/velodyne/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "9d3fa1c3e0b2897db1225ea02706f47488e8df5c67b5d4ff04e5ceb321a520d1";
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
