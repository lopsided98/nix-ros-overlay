
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, fmt, generate-parameter-library-py, parameter-traits, rclcpp, rclcpp-lifecycle, rclpy, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-library";
  version = "0.3.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/generate_parameter_library/0.3.8-3.tar.gz";
    name = "0.3.8-3.tar.gz";
    sha256 = "0f5f1d140b46e6c34fbc3c406ada8f904487a70141e8677732fe0fa61b71324c";
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
