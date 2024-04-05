
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-lint-auto, ament-lint-common, generate-parameter-library, rclpy }:
buildRosPackage {
  pname = "ros-rolling-cmake-generate-parameter-module-example";
  version = "0.3.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/cmake_generate_parameter_module_example/0.3.8-3.tar.gz";
    name = "0.3.8-3.tar.gz";
    sha256 = "0c0b3bdcc9f0303d1aada25a13969088e8d39aeb5c7f8dd71d760a55dc24c4d2";
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
