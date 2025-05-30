
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, lifecycle, lifecycle-msgs, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lifecycle-py";
  version = "0.37.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/lifecycle_py/0.37.0-1.tar.gz";
    name = "0.37.0-1.tar.gz";
    sha256 = "50972095d8efe0e1721a7feff78d13e9a16bb62b6c39fe4e8e16fc2da4b48e56";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint lifecycle ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = "Package containing demos for rclpy lifecycle implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
