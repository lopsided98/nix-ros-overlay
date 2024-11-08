
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-iron-velodyne";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/iron/velodyne/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "685ceff8a54f6fab2167c426869f817c4f08add96820d61621400f2e107306aa";
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
