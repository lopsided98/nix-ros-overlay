
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, nav-msgs, nav2-common, nav2-graceful-controller, nav2-msgs, nav2-ros-common, nav2-util, opennav-docking-core, pluginlib, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-opennav-docking";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/opennav_docking/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "c52ce267c9c3824a0479593c8abb775d549c7a173140d3404e74b6f690cd9a38";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake angles nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros geometry-msgs nav-msgs nav2-graceful-controller nav2-msgs nav2-ros-common nav2-util opennav-docking-core pluginlib rcl-interfaces rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Task Server for robot charger docking";
    license = with lib.licenses; [ asl20 ];
  };
}
