
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, eigen, geometry-msgs, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-velodyne-pointcloud";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/iron/velodyne_pointcloud/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "e630848e2f4ce9f7a55a8b8dff0b76c22a96db2edce221b6616e74b9d4ba8481";
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
