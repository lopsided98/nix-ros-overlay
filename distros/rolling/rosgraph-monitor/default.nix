
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, diagnostic-aggregator, diagnostic-msgs, generate-parameter-library, launch-ros, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-components, rosgraph-monitor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosgraph-monitor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/rolling/rosgraph_monitor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "0d2dc3722c20c9784f43526dff7d5b175ea423e9282d0d19944015060d097bf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs pluginlib rclcpp rclcpp-components rosgraph-monitor-msgs ];
  nativeBuildInputs = [ ament-cmake generate-parameter-library ];

  meta = {
    description = "Monitors the ROS graph to detect error conditions";
    license = with lib.licenses; [ asl20 ];
  };
}
