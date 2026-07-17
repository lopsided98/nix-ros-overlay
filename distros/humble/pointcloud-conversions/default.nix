
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, pcl-conversions, python3Packages, rclcpp, rclpy, sensor-msgs, sensor-msgs-py, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-pointcloud-conversions";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/li9i/pointcloud-conversions-release/archive/release/humble/pointcloud_conversions/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "6d96e91be71949eb6d3b3e9c8d02c925b78acf4910203e0d1bdbeef7432a7e41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pcl-conversions python3Packages.numpy rclcpp rclpy sensor-msgs sensor-msgs-py std-srvs tf2 tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 utilities for PLY/XYZ/PointCloud2 conversion and TF2-based frame transforms: ply_to_xyz and xyz_to_ply transframers (C++) and a pointcloud_to_ply mesh reconstructor (Python/Open3D).";
    license = with lib.licenses; [ mit ];
  };
}
