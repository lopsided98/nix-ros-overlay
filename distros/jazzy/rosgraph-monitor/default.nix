
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, generate-parameter-library, launch-ros, launch-testing-ament-cmake, rclcpp, rclcpp-components, rmw-implementation, rmw-stats-shim, rosgraph-monitor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosgraph-monitor";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/jazzy/rosgraph_monitor/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "1373e2a9d1e61a7ed1ce851bf99d1941a4df9b543cf585f7c6ca17f29de90391";
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
