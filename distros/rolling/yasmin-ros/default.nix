
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, example-interfaces, geometry-msgs, pluginlib, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, rosidl-runtime-py, std-msgs, std-srvs, tf2, tf2-msgs, tf2-py, tf2-ros, tf2-ros-py, yasmin }:
buildRosPackage {
  pname = "ros-rolling-yasmin-ros";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_ros/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "f0b84c22e2a3616c58e19bf412812d86415c1657da1c3b65d22724ad4e2c0c7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest example-interfaces python3Packages.pytest python3Packages.pytestcov std-msgs tf2 tf2-msgs tf2-py tf2-ros tf2-ros-py ];
  propagatedBuildInputs = [ example-interfaces geometry-msgs pluginlib rclcpp rclcpp-action rclpy rosidl-runtime-py std-msgs std-srvs tf2 tf2-msgs tf2-py tf2-ros tf2-ros-py yasmin ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN (Yet Another State MachINe) for ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
