
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, angles, console-bridge, diagnostic-msgs, diagnostic-updater, eigen, eigen-stl-containers, eigen3-cmake-module, geographic-msgs, geographiclib, geometry-msgs, gtest, libmavconn, mavlink, mavros-msgs, message-filters, nav-msgs, pluginlib, python3Packages, rclcpp, rclcpp-components, rclpy, rcpputils, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-mavros";
  version = "2.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/rolling/mavros/2.6.0-2.tar.gz";
    name = "2.6.0-2.tar.gz";
    sha256 = "a15c22b83eae787f10f9c664b40bf7b5ab40bbb5b8a08ab18d5fb116d3f62ef1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python angles ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common gtest ];
  propagatedBuildInputs = [ console-bridge diagnostic-msgs diagnostic-updater eigen eigen-stl-containers eigen3-cmake-module geographic-msgs geographiclib geometry-msgs libmavconn mavlink mavros-msgs message-filters nav-msgs pluginlib python3Packages.click rclcpp rclcpp-components rclpy rcpputils rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python eigen3-cmake-module ];

  meta = {
    description = ''MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Ground Control Station.'';
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
