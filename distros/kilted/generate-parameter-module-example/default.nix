
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, generate-parameter-library, generate-parameter-library-py, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-generate-parameter-module-example";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/kilted/generate_parameter_module_example/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "475a76c388cd2f9bda63d26644ce6a446838927cd5c4386541b8847c9b428814";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library generate-parameter-library-py rclpy ];

  meta = {
    description = "Example usage of generate_parameter_library for a python module";
    license = with lib.licenses; [ bsd3 ];
  };
}
