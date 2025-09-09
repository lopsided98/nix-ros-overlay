
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, diagnostic-aggregator, diagnostic-msgs, generate-parameter-library, launch-ros, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-components, rosgraph-monitor-msgs }:
buildRosPackage {
  pname = "ros-humble-rosgraph-monitor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/humble/rosgraph_monitor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "9e4985ed29159fe49f2f924a9da10acb737ccce74f9602f7c5faa05340f24168";
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
