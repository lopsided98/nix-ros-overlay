
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, action-tutorials-interfaces, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-python, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-rolling-simple-actions";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/rolling/simple_actions/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "a4f4bd87938884ac674274fc0d65c5676a64c7c45997e5692b32361f5b1dbb52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ action-tutorials-interfaces ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ];
  propagatedBuildInputs = [ action-msgs rclcpp rclcpp-action rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Simple library for using the `rclpy/rclcpp` action libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
