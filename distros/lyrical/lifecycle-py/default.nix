
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, example-interfaces, launch-testing-ros, lifecycle, lifecycle-msgs, rclpy, ros-testing }:
buildRosPackage {
  pname = "ros-lyrical-lifecycle-py";
  version = "0.37.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/lyrical/lifecycle_py/0.37.10-1.tar.gz";
    name = "0.37.10-1.tar.gz";
    sha256 = "00c9a068849824cd114bd190528100b50bc6c1af4ccc7db575b350e5e62344fc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint launch-testing-ros lifecycle ros-testing ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rclpy ];

  meta = {
    description = "Package containing demos for rclpy lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
