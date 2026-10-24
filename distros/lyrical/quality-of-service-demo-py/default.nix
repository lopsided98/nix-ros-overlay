
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-quality-of-service-demo-py";
  version = "0.37.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/quality_of_service_demo_py/0.37.10-1.tar.gz";
    name = "0.37.10-1.tar.gz";
    sha256 = "41e15cf08318594810f5704225f86d59e7ba9f8a76f808ce682b2a5c10b19539";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy sensor-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
