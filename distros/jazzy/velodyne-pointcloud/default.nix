
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, eigen, geometry-msgs, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-velodyne-pointcloud";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/jazzy/velodyne_pointcloud/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "ec5fa2762bdc44113c5aaa04c59ef8eb532538b95bdb740ff747de277c99cfcf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles diagnostic-updater eigen geometry-msgs message-filters pcl rclcpp rclcpp-components sensor-msgs tf2 tf2-ros velodyne-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Point cloud conversions for Velodyne 3D LIDARs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
