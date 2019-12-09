
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-quality-of-service-demo-py";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/quality_of_service_demo_py/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "e1b32c65445720391e9e857ecbaf26a28be89eeaa7f3770af8d27d1c1c6e5c36";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ std-msgs rclpy ];

  meta = {
    description = ''Python Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
