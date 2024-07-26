
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-quality-of-service-demo-py";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/quality_of_service_demo_py/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "7f1bc0cc36a957c6dd319dc1db2291f6722f216a7552c9828c5514b9b0b36925";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
