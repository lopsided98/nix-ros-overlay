
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-python, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-rolling-simple-actions";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/DLu/simple_actions-release/archive/release/rolling/simple_actions/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "62e3d348b705bfc026779ff95bbc1ba8668c3f08dd82fdc7b58a0f053f16c339";
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
