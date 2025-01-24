
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, franka-msgs, hardware-interface, libfranka, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-franka-hardware";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_hardware/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f6e9b0c1d62ad5e919a455036552074ff7c6eb3d152c46449f5074e0b7a50757";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-copyright ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-gmock ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ];
  propagatedBuildInputs = [ franka-msgs hardware-interface libfranka pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "franka_hardware provides hardware interfaces for using Franka Robotics research robots with ros2_control";
    license = with lib.licenses; [ asl20 ];
  };
}
