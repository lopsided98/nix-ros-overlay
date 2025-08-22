
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, dwb-core, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-costmap-2d, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-dwb-plugins";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/dwb_plugins/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "b8b8d756c6fd0697ac535b22c8e556b19299e592fbae3af5a5da438a28585860";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common nav2-costmap-2d rclcpp-lifecycle ];
  propagatedBuildInputs = [ dwb-core dwb-msgs geometry-msgs nav-2d-msgs nav-2d-utils nav2-util pluginlib rcl-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core";
    license = with lib.licenses; [ bsd3 ];
  };
}
