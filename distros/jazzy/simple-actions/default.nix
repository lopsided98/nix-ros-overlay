
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, action-tutorials-interfaces, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-python, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-simple-actions";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/jazzy/simple_actions/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "ac93de15ee6d535bc89563c4ad4964960f5141b8d96f30a09c8ef9d456c1a7cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ action-tutorials-interfaces ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ];
  propagatedBuildInputs = [ action-msgs rclcpp rclcpp-action rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple library for using the `rclpy/rclcpp` action libraries";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
