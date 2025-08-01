
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, diagnostic-aggregator, diagnostic-msgs, generate-parameter-library, launch-ros, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-components, rosgraph-monitor-msgs }:
buildRosPackage {
  pname = "ros-kilted-rosgraph-monitor";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/kilted/rosgraph_monitor/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "b4bd39c71c030f16e9b6c8cfc084405287c1fd4374b54837c2e55bf3c093f76d";
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
