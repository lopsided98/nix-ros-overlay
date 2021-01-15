
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, class-loader, cv-bridge, geometry-msgs, lz4, message-filters, object-analytics-msgs, object-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-object-analytics-node";
  version = "0.5.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/dashing/object_analytics_node/0.5.4-2.tar.gz";
    name = "0.5.4-2.tar.gz";
    sha256 = "91bb1a1fc1b6402b191663391516e9ac8f89a2a1074b43ba74049cf212d177e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-components ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python class-loader cv-bridge geometry-msgs lz4 message-filters object-analytics-msgs object-msgs pcl pcl-conversions rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The object_analytics_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
