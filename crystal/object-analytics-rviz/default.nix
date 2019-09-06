
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, object-analytics-msgs, ament-cmake, ament-lint-common, sensor-msgs, cv-bridge, message-filters, rclcpp, std-msgs, ament-lint-auto, visualization-msgs, object-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-object-analytics-rviz";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/object_analytics_rviz/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "00f9f160d4740e7ca9799da65b83e5337aa482e4dac4cc151ce8c84deafcb65b";
  };

  buildType = "ament_cmake";
  buildInputs = [ object-analytics-msgs sensor-msgs cv-bridge message-filters rclcpp std-msgs visualization-msgs object-msgs geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ object-analytics-msgs sensor-msgs cv-bridge message-filters rclcpp std-msgs visualization-msgs object-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Display object analytics result in rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
