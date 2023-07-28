
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, generate-parameter-library, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-generate-parameter-module-example";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/iron/generate_parameter_module_example/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "0091e7d3be0820fd322706ea37ea96a58bee7e808e16bf0d54cee0e79a1ca509";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ generate-parameter-library rclpy ];

  meta = {
    description = ''Example usage of generate_parameter_library for a python module'';
    license = with lib.licenses; [ bsd3 ];
  };
}
