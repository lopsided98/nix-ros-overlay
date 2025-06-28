
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav-2d-utils, nav-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-nav2-graceful-controller";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_graceful_controller/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "cc019ae416a94b646e27aef918a71365f28ef1b64831107bd5786f0fdac84775";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common nav2-controller ];
  propagatedBuildInputs = [ angles geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib rcl-interfaces rclcpp rclcpp-lifecycle tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Graceful motion controller";
    license = with lib.licenses; [ asl20 ];
  };
}
