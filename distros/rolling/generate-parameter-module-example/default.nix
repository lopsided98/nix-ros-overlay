
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, generate-parameter-library, generate-parameter-library-py, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-module-example";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_module_example/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "167bec3709d3bb0def1348d5f16e4a3c3a832b8ef888e09ea17992851218a246";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library generate-parameter-library-py rclpy ];

  meta = {
    description = "Example usage of generate_parameter_library for a python module";
    license = with lib.licenses; [ bsd3 ];
  };
}
