
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pcl, pcl-conversions, pcl-ros, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-pointcloud-to-ply";
  version = "0.0.7-r2";

  src = fetchurl {
    url = "https://github.com/li9i/pointcloud-to-ply-release/archive/release/jazzy/pointcloud_to_ply/0.0.7-2.tar.gz";
    name = "0.0.7-2.tar.gz";
    sha256 = "73dad9dba3fedcfd270dd6653f53d6be5bc0a5e4806c0b5b80d8c41423a94af3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pcl pcl-conversions pcl-ros rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Subscribe to a PointCloud2 topic, reconstruct a mesh, and save to OBJ/PLY using PCL.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
