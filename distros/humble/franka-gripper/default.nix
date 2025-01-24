
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-python, ament-cmake-xmllint, control-msgs, franka-msgs, libfranka, rclcpp, rclcpp-action, rclcpp-components, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-franka-gripper";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_gripper/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1ab5190b5c5b05d0016f951ce246e4f7139335e40fa1286a3daffd3ca0c46054";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-copyright ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ];
  propagatedBuildInputs = [ control-msgs franka-msgs libfranka rclcpp rclcpp-action rclcpp-components rclpy sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "This package implements the franka gripper of type Franka Hand for the use in ROS2";
    license = with lib.licenses; [ asl20 ];
  };
}
