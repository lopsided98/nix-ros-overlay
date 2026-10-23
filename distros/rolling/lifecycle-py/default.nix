
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, launch-testing-ros, lifecycle, lifecycle-msgs, rclpy, ros-testing }:
buildRosPackage {
  pname = "ros-rolling-lifecycle-py";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle_py/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "0d43c79ffb4c667fff614ff648f3adb85bde991ca7d6f29d96a49d329ca1c391";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint launch-testing-ros lifecycle ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclpy ];

  meta = {
    description = "Package containing demos for rclpy lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
