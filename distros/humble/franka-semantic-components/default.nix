
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, franka-hardware, franka-msgs, geometry-msgs, hardware-interface, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-franka-semantic-components";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_semantic_components/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "66bfc4103a958c74c325a483c5f7987da37aff987cf6972b88704b76ba676308";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-copyright ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-gmock ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ];
  propagatedBuildInputs = [ franka-hardware franka-msgs geometry-msgs hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "franka_semantic_components provides semantic components for using Franka Robotics research robots with ros2_control";
    license = with lib.licenses; [ asl20 ];
  };
}
