
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, dwb-core, dwb-msgs, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-costmap-2d, nav2-ros-common, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-dwb-plugins";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/dwb_plugins/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "f976780e90a2b6c881719fd8be8b02895d2e5baaf77d493819bc957e532ad01d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common nav2-costmap-2d rclcpp-lifecycle ];
  propagatedBuildInputs = [ backward-ros dwb-core dwb-msgs geometry-msgs nav-2d-msgs nav-2d-utils nav2-ros-common nav2-util pluginlib rcl-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_core";
    license = with lib.licenses; [ bsd3 ];
  };
}
