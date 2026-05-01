
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, fmt, generate-parameter-library-py, parameter-traits, rclcpp, rclcpp-lifecycle, rclpy, rsl, tcb-span, tl-expected, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-lyrical-generate-parameter-library";
  version = "0.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/lyrical/generate_parameter_library/0.8.0-3.tar.gz";
    name = "0.8.0-3.tar.gz";
    sha256 = "21a1b2c50e50ea4f540d444c383d7dcc2bdcc237bb379faeaf5141c88a3dd7f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ fmt generate-parameter-library-py parameter-traits rclcpp rclcpp-lifecycle rclpy rsl tcb-span tl-expected tl-expected-nixpkgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python generate-parameter-library-py ];

  meta = {
    description = "CMake to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
