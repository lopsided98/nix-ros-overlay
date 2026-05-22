
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, fmt, generate-parameter-library-py, rclcpp, rclcpp-lifecycle, rclpy, rsl, tcb-span, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-lyrical-generate-parameter-library";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/lyrical/generate_parameter_library/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "1ed91d540f684130a2532a970b10afbb04ea4b0082a9808fa3779b9a4b035f63";
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
