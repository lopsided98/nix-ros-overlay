
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-quality-of-service-demo-py";
  version = "0.36.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/quality_of_service_demo_py/0.36.3-1.tar.gz";
    name = "0.36.3-1.tar.gz";
    sha256 = "d314ffbbd91f0e40192acd2f110b54335c2f19b0363f6308844134ed06ea6fa6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
