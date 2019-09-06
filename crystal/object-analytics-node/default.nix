
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, object-analytics-msgs, ament-cmake, ament-lint-common, pcl, class-loader, cv-bridge, sensor-msgs, ament-cmake-gtest, message-filters, object-msgs, rclcpp, ament-index-cpp, std-msgs, ament-index-python, ament-lint-auto, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-object-analytics-node";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/object_analytics_node/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "8028765babd1011acd8ee4ad27dd07903d43f482e862920544ba212be7186c80";
  };

  buildType = "ament_cmake";
  buildInputs = [ object-analytics-msgs pcl class-loader sensor-msgs message-filters cv-bridge object-msgs rclcpp ament-index-cpp pcl-conversions geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ object-analytics-msgs pcl class-loader sensor-msgs message-filters cv-bridge object-msgs rclcpp ament-index-cpp std-msgs ament-index-python pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The object_analytics_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
