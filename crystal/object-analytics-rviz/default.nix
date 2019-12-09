
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, std-msgs, ament-lint-common, object-msgs, ament-cmake, cv-bridge, visualization-msgs, object-analytics-msgs, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-object-analytics-rviz";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/object_analytics_rviz/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "00f9f160d4740e7ca9799da65b83e5337aa482e4dac4cc151ce8c84deafcb65b";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs message-filters geometry-msgs std-msgs object-msgs cv-bridge visualization-msgs object-analytics-msgs rclcpp ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs std-msgs object-msgs cv-bridge visualization-msgs object-analytics-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Display object analytics result in rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
