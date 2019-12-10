
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-quality-of-service-demo-py";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/quality_of_service_demo_py/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "1f90aa8f43a83b4e006720b0b8a89609aec6746a71de0d9bbff7f2bd232968bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Python Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
