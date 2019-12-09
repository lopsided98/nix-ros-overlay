
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, class-loader, rclcpp-components, std-msgs, ament-lint-common, object-msgs, pcl, ament-cmake, cv-bridge, pcl-conversions, ament-cmake-gtest, object-analytics-msgs, lz4, rclcpp, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-object-analytics-node";
  version = "0.5.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/dashing/object_analytics_node/0.5.4-2.tar.gz";
    name = "0.5.4-2.tar.gz";
    sha256 = "91bb1a1fc1b6402b191663391516e9ac8f89a2a1074b43ba74049cf212d177e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs message-filters geometry-msgs rclcpp-components object-msgs pcl object-analytics-msgs cv-bridge pcl-conversions class-loader lz4 rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs class-loader std-msgs object-msgs pcl cv-bridge pcl-conversions object-analytics-msgs lz4 rclcpp ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The object_analytics_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
