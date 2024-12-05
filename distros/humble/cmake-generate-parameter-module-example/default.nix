
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-lint-auto, ament-lint-common, generate-parameter-library, rclpy }:
buildRosPackage {
  pname = "ros-humble-cmake-generate-parameter-module-example";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/cmake_generate_parameter_module_example/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "19b059f3a7b0df4d2b1932796956c949c7445f778c3b0b9ba06a8f6060934f5a";
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
