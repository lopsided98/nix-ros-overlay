
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, nav-msgs, nav2-common, nav2-controller, nav2-core, nav2-costmap-2d, nav2-ros-common, nav2-util, pluginlib, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-graceful-controller";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_graceful_controller/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "267a51a48c012403b4eebe3142afcc083ae4a1d96f70fabc268dddf8c80d9111";
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
