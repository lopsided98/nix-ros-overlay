
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, generate-parameter-library, generate-parameter-library-py, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-generate-parameter-module-example";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/iron/generate_parameter_module_example/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "72475cf5472ce06e4f391a2a601e8bfe55adafa28bb1b5aec03e08770a2e72c8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library generate-parameter-library-py rclpy ];

  meta = {
    description = ''Example usage of generate_parameter_library for a python module'';
    license = with lib.licenses; [ bsd3 ];
  };
}
