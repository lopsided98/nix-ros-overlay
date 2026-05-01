
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, generate-parameter-library, launch-ros, launch-testing-ament-cmake, rclcpp, rclcpp-components, rmw-implementation, rmw-stats-shim, rosgraph-monitor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosgraph-monitor";
  version = "0.2.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/lyrical/rosgraph_monitor/0.2.3-3.tar.gz";
    name = "0.2.3-3.tar.gz";
    sha256 = "ad05079c427b5e75136a6fad35e34f5ff1846a4712db730fb1b247163bed4400";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake rmw-implementation rmw-stats-shim ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater rclcpp rclcpp-components rosgraph-monitor-msgs ];
  nativeBuildInputs = [ ament-cmake generate-parameter-library ];

  meta = {
    description = "Monitors the ROS graph to detect error conditions";
    license = with lib.licenses; [ asl20 ];
  };
}
