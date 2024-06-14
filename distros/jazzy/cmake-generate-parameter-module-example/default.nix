
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-lint-auto, ament-lint-common, generate-parameter-library, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-cmake-generate-parameter-module-example";
  version = "0.3.8-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/jazzy/cmake_generate_parameter_module_example/0.3.8-4.tar.gz";
    name = "0.3.8-4.tar.gz";
    sha256 = "54cc4651ae2c5ed444c6bbc6f21492cd97eeff3b11f15dba5d4fcd54853a7e46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ generate-parameter-library rclpy ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = "Example usage of generate_parameter_library for a python module with cmake.";
    license = with lib.licenses; [ bsd3 ];
  };
}
