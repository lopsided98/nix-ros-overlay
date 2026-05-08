
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, lifecycle, lifecycle-msgs, rclpy, ros-testing }:
buildRosPackage {
  pname = "ros-rolling-lifecycle-py";
  version = "0.38.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle_py/0.38.0-1.tar.gz";
    name = "0.38.0-1.tar.gz";
    sha256 = "4e2eb718e19d6a6f32d135590e761716ab678a409bdc94c87c9562f8f8f124b2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint lifecycle ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclpy ];

  meta = {
    description = "Package containing demos for rclpy lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
