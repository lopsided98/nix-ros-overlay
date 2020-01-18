
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, class-loader, cv-bridge, geometry-msgs, message-filters, object-analytics-msgs, object-msgs, pcl, pcl-conversions, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-object-analytics-node";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/object_analytics_node/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "8028765babd1011acd8ee4ad27dd07903d43f482e862920544ba212be7186c80";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp ament-index-python class-loader cv-bridge geometry-msgs message-filters object-analytics-msgs object-msgs pcl pcl-conversions rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The object_analytics_node package'';
    license = with lib.licenses; [ asl20 ];
  };
}
