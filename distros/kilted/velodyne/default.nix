
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-kilted-velodyne";
  version = "2.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/kilted/velodyne/2.5.1-2.tar.gz";
    name = "2.5.1-2.tar.gz";
    sha256 = "24b1fdeb6eda4ec2437860b2bd2e7ef0149d7035c626ccb35dcf637ccf92f8e3";
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
