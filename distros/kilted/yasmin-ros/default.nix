
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, example-interfaces, geometry-msgs, pluginlib, python3Packages, rclcpp, rclcpp-action, rclpy, ros-environment, rosidl-runtime-py, std-msgs, std-srvs, tf2, tf2-msgs, tf2-py, tf2-ros, tf2-ros-py, yasmin }:
buildRosPackage {
  pname = "ros-kilted-yasmin-ros";
  version = "6.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_ros/6.1.2-1.tar.gz";
    name = "6.1.2-1.tar.gz";
    sha256 = "287831b21df297ce83a34949423d4f033a794e2d7a045cbc99a42e0f6160757b";
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
