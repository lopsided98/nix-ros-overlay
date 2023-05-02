
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-quality-of-service-demo-py";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/quality_of_service_demo_py/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "91cdb9f0e9dc82e16d8d194e32e2f1efa99516c4acbc83f4d17b892a3b363246";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = ''Python Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
