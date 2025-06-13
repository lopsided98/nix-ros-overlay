
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, fmt, generate-parameter-library-py, parameter-traits, rclcpp, rclcpp-lifecycle, rclpy, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-kilted-generate-parameter-library";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/generate_parameter_library/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "a938f0ba2bcc60e3f29d66e19c0d26ab60f8945554b6a06446399c40b361637d";
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
