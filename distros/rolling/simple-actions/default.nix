
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, action-tutorials-interfaces, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-python, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-rolling-simple-actions";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/rolling/simple_actions/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "369cb1db5ca01749af7a0ac698e12323fc1884da12465e01628965c403857e5a";
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
