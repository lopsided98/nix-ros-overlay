
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-quality-of-service-demo-py";
  version = "0.32.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/quality_of_service_demo_py/0.32.1-1.tar.gz";
    name = "0.32.1-1.tar.gz";
    sha256 = "0a78f6f75a09b14c54618cff7dcf6f4e6592fb57b473a2b0e11c3b09897eabe3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = ''Python Demo applications for Quality of Service features'';
    license = with lib.licenses; [ asl20 ];
  };
}
