
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, generate-parameter-library, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-generate-parameter-module-example";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/humble/generate_parameter_module_example/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "9aa8e179024fe60427f8c6a35296b72cd0f9bb3b3815892357ae80ce94930c43";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library rclpy ];

  meta = {
    description = ''Example usage of generate_parameter_library for a python module'';
    license = with lib.licenses; [ bsd3 ];
  };
}
