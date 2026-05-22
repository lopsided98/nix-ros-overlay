
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-flexbe-mirror";
  version = "4.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/lyrical/flexbe_mirror/4.1.4-1.tar.gz";
    name = "4.1.4-1.tar.gz";
    sha256 = "ed4acb039c5823dcbb7cc1946112e2ec8e335fa11b8ffb5c71fcffe5d829cb09";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_mirror implements functionality to remotely mirror an executed behavior.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
