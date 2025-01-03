
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-quality-of-service-demo-py";
  version = "0.35.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/quality_of_service_demo_py/0.35.1-1.tar.gz";
    name = "0.35.1-1.tar.gz";
    sha256 = "d0161a521a9ea08edd5ceff6b20ce0050d83e38cb6f7e1950c2176867dd512a9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
