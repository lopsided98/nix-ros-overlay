
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, fmt, generate-parameter-library-py, rclcpp, rclcpp-lifecycle, rclpy, rsl, tcb-span, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-library";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_library/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "73c90728148fee94bb9ec512b868a49dab4a468cbd02c5cab9b7bb59b7f5f1e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ fmt generate-parameter-library-py rclcpp rclcpp-lifecycle rclpy rsl tcb-span tl-expected-nixpkgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python generate-parameter-library-py ];

  meta = {
    description = "CMake to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
