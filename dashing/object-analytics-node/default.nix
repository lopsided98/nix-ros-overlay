
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lz4, rclcpp-components, object-analytics-msgs, ament-cmake, ament-lint-common, pcl, class-loader, cv-bridge, sensor-msgs, ament-cmake-gtest, message-filters, object-msgs, rclcpp, std-msgs, ament-index-python, ament-lint-auto, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-object-analytics-node";
  version = "0.5.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/dashing/object_analytics_node/0.5.4-2.tar.gz";
    name = "0.5.4-2.tar.gz";
    sha256 = "91bb1a1fc1b6402b191663391516e9ac8f89a2a1074b43ba74049cf212d177e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ lz4 object-analytics-msgs pcl-conversions class-loader sensor-msgs message-filters cv-bridge pcl object-msgs rclcpp rclcpp-components geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ lz4 object-analytics-msgs pcl class-loader sensor-msgs message-filters cv-bridge object-msgs rclcpp std-msgs ament-index-python pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The object_analytics_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
