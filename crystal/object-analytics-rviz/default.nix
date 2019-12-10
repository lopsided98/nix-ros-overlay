
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, message-filters, object-analytics-msgs, object-msgs, rclcpp, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-crystal-object-analytics-rviz";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/object_analytics_rviz/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "00f9f160d4740e7ca9799da65b83e5337aa482e4dac4cc151ce8c84deafcb65b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs message-filters object-analytics-msgs object-msgs rclcpp sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Display object analytics result in rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
