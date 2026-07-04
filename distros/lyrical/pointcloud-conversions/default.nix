
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, pcl-conversions, python3Packages, rclcpp, rclpy, sensor-msgs, sensor-msgs-py, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-pointcloud-conversions";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/li9i/pointcloud-conversions-release/archive/release/lyrical/pointcloud_conversions/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "597622e8f3b6a16fcd7843f7c7cf8578aeba9542ad74d9c22463a430af3eb14b";
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
