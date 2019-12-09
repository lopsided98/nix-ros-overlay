
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, class-loader, std-msgs, ament-lint-common, object-msgs, pcl, ament-cmake, cv-bridge, pcl-conversions, ament-cmake-gtest, object-analytics-msgs, ament-index-cpp, rclcpp, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-object-analytics-node";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/object_analytics_node/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "8028765babd1011acd8ee4ad27dd07903d43f482e862920544ba212be7186c80";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs message-filters geometry-msgs object-msgs pcl object-analytics-msgs cv-bridge pcl-conversions class-loader ament-index-cpp rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs class-loader std-msgs object-msgs pcl cv-bridge pcl-conversions object-analytics-msgs ament-index-cpp rclcpp ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The object_analytics_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
