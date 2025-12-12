
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, fmt, generate-parameter-library-py, parameter-traits, rclcpp, rclcpp-lifecycle, rclpy, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-kilted-generate-parameter-library";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/generate_parameter_library/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "e72b86a96e441e67dfb13519f50d2436defd5d0a76902bce520fcc8ec48f595f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt generate-parameter-library-py parameter-traits rclcpp rclcpp-lifecycle rclpy rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python generate-parameter-library-py ];

  meta = {
    description = "CMake to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
