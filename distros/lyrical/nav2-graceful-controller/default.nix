
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, nav-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-ros-common, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-graceful-controller";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_graceful_controller/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "af781f27043959e2580c945979a847bc30e87058a224344db5e5764833b702d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common nav2-controller ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-ros-common nav2-util pluginlib rcl-interfaces rclcpp rclcpp-lifecycle tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Graceful motion controller";
    license = with lib.licenses; [ asl20 ];
  };
}
