
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-quality-of-service-demo-py";
  version = "0.37.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/quality_of_service_demo_py/0.37.8-3.tar.gz";
    name = "0.37.8-3.tar.gz";
    sha256 = "3872c32bf48bc074244a34d7fc8b5f1102ddfcbb35898bbcf1731452e44f4ce7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy sensor-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
