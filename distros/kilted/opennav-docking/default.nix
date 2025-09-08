
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, geometry-msgs, nav-msgs, nav2-common, nav2-graceful-controller, nav2-msgs, nav2-util, opennav-docking-core, pluginlib, rcl-interfaces, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-opennav-docking";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/opennav_docking/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "5405dd00ae4b507a9df2a4f086f3b4c6722408a5fcd81dece1377751ed85e987";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles geometry-msgs nav-msgs nav2-graceful-controller nav2-msgs nav2-util opennav-docking-core pluginlib rcl-interfaces rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle sensor-msgs tf2 tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A Task Server for robot charger docking";
    license = with lib.licenses; [ asl20 ];
  };
}
