
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-flexbe-mirror";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/kilted/flexbe_mirror/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "0175769b16a8ebbc249604259c1e1b9e908295e8df517149ea884d47c0e8b4ec";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_mirror implements functionality to remotely mirror an executed behavior.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
