
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-quality-of-service-demo-py";
  version = "0.20.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/quality_of_service_demo_py/0.20.6-1.tar.gz";
    name = "0.20.6-1.tar.gz";
    sha256 = "c11c82d7201774adfc27aff0be7020fa5612ff5edef480a9c69c59c200a90abd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
