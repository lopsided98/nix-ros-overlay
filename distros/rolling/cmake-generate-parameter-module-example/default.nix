
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-lint-auto, ament-lint-common, generate-parameter-library, rclpy }:
buildRosPackage {
  pname = "ros-rolling-cmake-generate-parameter-module-example";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/cmake_generate_parameter_module_example/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "e22ca0593031edb874033bce7ce1eb6b838d67e39acff58b6cffd981716bb466";
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
