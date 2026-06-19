
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pcl, pcl-conversions, pcl-ros, rclcpp, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-ply-utils";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/li9i/ply-utils-release/archive/release/jazzy/ply_utils/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "a0e7bdad85afddd40a96de1ca4311f9c3b3a7765f36bb61e4c50a7d987f25684";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pcl pcl-conversions pcl-ros rclcpp sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 utilities for PLY/XYZ/PointCloud2 conversion and TF2-based frame transforms: ply_to_xyz and xyz_to_ply transframers and a pointcloud_to_ply mesh reconstructor (PCL).";
    license = with lib.licenses; [ mit ];
  };
}
