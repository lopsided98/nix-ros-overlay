
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, generate-parameter-library, launch-ros, launch-testing-ament-cmake, rclcpp, rclcpp-components, rmw-implementation, rmw-stats-shim, rosgraph-monitor-msgs }:
buildRosPackage {
  pname = "ros-kilted-rosgraph-monitor";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/kilted/rosgraph_monitor/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "0381338170d90f0e4e83f5d65f8c217c2680d3308a7c381581ad6d3f5933ec4b";
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
