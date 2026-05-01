
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, lifecycle, lifecycle-msgs, rclpy, ros-testing }:
buildRosPackage {
  pname = "ros-lyrical-lifecycle-py";
  version = "0.37.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/lifecycle_py/0.37.8-3.tar.gz";
    name = "0.37.8-3.tar.gz";
    sha256 = "a459093d17edf0df031b925fa58718ee8f1e48b796a3649808c5f248513a2449";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint lifecycle ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclpy ];

  meta = {
    description = "Package containing demos for rclpy lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
