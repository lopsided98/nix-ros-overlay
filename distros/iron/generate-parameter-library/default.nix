
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, fmt, generate-parameter-library-py, parameter-traits, rclcpp, rclcpp-lifecycle, rclpy, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-iron-generate-parameter-library";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/iron/generate_parameter_library/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "896f4ef98f7d8a29302bd2d24c7c1055cd9ec684acc23b9494e7d4180fe5f5a6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt generate-parameter-library-py parameter-traits rclcpp rclcpp-lifecycle rclpy rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python generate-parameter-library-py ];

  meta = {
    description = ''CMake to generate ROS parameter library.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
