
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-lint-auto, ament-lint-common, generate-parameter-library, rclpy }:
buildRosPackage {
  pname = "ros-humble-cmake-generate-parameter-module-example";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/cmake_generate_parameter_module_example/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "4297eeabee5a00e4e13362018b0c66a1ec50230bd0e0b111569cc3a7c27c3333";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ generate-parameter-library rclpy ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = ''Example usage of generate_parameter_library for a python module with cmake.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
