
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-flexbe-input";
  version = "4.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/lyrical/flexbe_input/4.0.3-3.tar.gz";
    name = "4.0.3-3.tar.gz";
    sha256 = "92fce9fe7beb8a499a045c9cb1bd06d9566076125acced60a8db9c17fc677cea";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_input enables to send data to onboard behavior when required.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
