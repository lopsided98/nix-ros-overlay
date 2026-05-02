
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-rolling-velodyne";
  version = "2.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/rolling/velodyne/2.5.1-2.tar.gz";
    name = "2.5.1-2.tar.gz";
    sha256 = "67268eabb19424a9b9d6211e5632714e15d733936b54b6f3de5a7408cab4fa28";
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
