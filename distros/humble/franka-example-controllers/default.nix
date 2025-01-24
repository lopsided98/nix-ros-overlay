
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, controller-interface, controller-manager, franka-msgs, franka-semantic-components, hardware-interface-testing, pinocchio, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-test-assets, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-franka-example-controllers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_example_controllers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "18f53c6baeb399aa8bd0183d16de77eb9ca81a8a47586a74877a13cfddd69418";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-copyright ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-gmock ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ controller-interface franka-msgs franka-semantic-components pinocchio pluginlib rclcpp rclcpp-lifecycle sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "franka_example_controllers provides example code for controllingFranka Robotics research robots with ros2_control";
    license = with lib.licenses; [ asl20 ];
  };
}
