
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-quality-of-service-demo-py";
  version = "0.20.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/quality_of_service_demo_py/0.20.10-1.tar.gz";
    name = "0.20.10-1.tar.gz";
    sha256 = "23a791bda456ac84495e12bc2f4e027bfaab81768bdd783a83a8c530c1f46616";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Python Demo applications for Quality of Service features";
    license = with lib.licenses; [ asl20 ];
  };
}
