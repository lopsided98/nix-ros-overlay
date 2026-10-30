
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-quality-of-service-demo-py";
  version = "0.36.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/quality_of_service_demo_py/0.36.6-1.tar.gz";
    name = "0.36.6-1.tar.gz";
    sha256 = "1da5aec2f3f5034362ab57e8f9763d0c7eaadad42d8ef60e4829f1371da47e11";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
