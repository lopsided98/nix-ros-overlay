
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, example-interfaces, geometry-msgs, pluginlib, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, rosidl-runtime-py, std-msgs, std-srvs, tf2, tf2-msgs, tf2-py, tf2-ros, tf2-ros-py, yasmin }:
buildRosPackage {
  pname = "ros-humble-yasmin-ros";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_ros/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "4a746d4c89a463617ac064e9dd713016415be9b88874ebc6af8833f9f795e160";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest example-interfaces python3Packages.pytest python3Packages.pytestcov std-msgs tf2 tf2-msgs tf2-py tf2-ros tf2-ros-py ];
  propagatedBuildInputs = [ example-interfaces geometry-msgs pluginlib rclcpp rclcpp-action rclpy rosidl-runtime-py std-msgs std-srvs tf2 tf2-msgs tf2-py tf2-ros tf2-ros-py yasmin ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) for ROS 2";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
