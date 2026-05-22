
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-flexbe-mirror";
  version = "4.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/rolling/flexbe_mirror/4.1.4-1.tar.gz";
    name = "4.1.4-1.tar.gz";
    sha256 = "d19ecd78f6e79f39cf186ed972fd3bcfa1fd4a731ed83f70bbb10c4cc260e2bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_mirror implements functionality to remotely mirror an executed behavior.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
