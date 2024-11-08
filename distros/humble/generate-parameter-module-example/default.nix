
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, generate-parameter-library, generate-parameter-library-py, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-module-example";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/generate_parameter_module_example/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "c76b9cbf150fe78b4c0f038d2b168f13ae88be0690edbb3bf0b2c04f38db5827";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library generate-parameter-library-py rclpy ];

  meta = {
    description = "Example usage of generate_parameter_library for a python module";
    license = with lib.licenses; [ bsd3 ];
  };
}
