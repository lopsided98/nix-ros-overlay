
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-python, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-iron-simple-actions";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/iron/simple_actions/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "165862ae30f399bd9a149cddeb37cfd27f7da9979f03ad9a3e1b1c65d0436a8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ];
  propagatedBuildInputs = [ action-msgs rclcpp rclcpp-action rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Simple library for using the `rclpy/rclcpp` action libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
