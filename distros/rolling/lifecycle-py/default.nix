
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, lifecycle, lifecycle-msgs, rclpy, ros-testing }:
buildRosPackage {
  pname = "ros-rolling-lifecycle-py";
  version = "0.37.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle_py/0.37.8-2.tar.gz";
    name = "0.37.8-2.tar.gz";
    sha256 = "4f6a56527ad74fe085b6bfa577d2e8061931687b0db3fbc823d71c214a893798";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint lifecycle ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclpy ];

  meta = {
    description = "Package containing demos for rclpy lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
