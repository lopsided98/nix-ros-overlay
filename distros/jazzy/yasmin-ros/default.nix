
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, example-interfaces, geometry-msgs, pluginlib, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, rosidl-runtime-py, std-msgs, std-srvs, tf2, tf2-msgs, tf2-py, tf2-ros, tf2-ros-py, yasmin }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-ros";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_ros/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "ddf867666330f4a2038737442396dcd22427fb3d5a3308615b4a7f4ba5339bc6";
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
