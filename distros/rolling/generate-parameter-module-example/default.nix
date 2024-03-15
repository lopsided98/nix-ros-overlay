
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, generate-parameter-library, generate-parameter-library-py, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-module-example";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_module_example/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "eabad0107103d2aa56faf728a0a24244ff520b9909c065b413077e14d8c02cbc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library generate-parameter-library-py rclpy ];

  meta = {
    description = ''Example usage of generate_parameter_library for a python module'';
    license = with lib.licenses; [ bsd3 ];
  };
}
