
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-quality-of-service-demo-py";
  version = "0.33.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/quality_of_service_demo_py/0.33.8-1.tar.gz";
    name = "0.33.8-1.tar.gz";
    sha256 = "12da46412d0a206ddab7fa8af017c6e4fff6312fc856b1ed524854527085db2f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
