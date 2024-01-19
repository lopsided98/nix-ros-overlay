
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-msgs, launch-ros, launch-testing, pythonPackages, rclpy, std-msgs, std-srvs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-iron-flexbe-core";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_core/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "c81c3c03bf8690d4e737455a14faad721523b826bf5b2de026fd4144571bfab1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-ros launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-msgs rclpy std-msgs std-srvs tf2-ros-py ];

  meta = {
    description = ''flexbe_core provides the core components for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
