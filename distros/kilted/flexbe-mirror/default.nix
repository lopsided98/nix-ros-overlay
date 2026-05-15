
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-flexbe-mirror";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/kilted/flexbe_mirror/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "a31471a1548bc20438a979894cc99564545bbe1927043b56d6a09c1ef04920e4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_mirror implements functionality to remotely mirror an executed behavior.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
