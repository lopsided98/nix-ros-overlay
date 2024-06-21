
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, flexbe-states, launch-ros, launch-testing, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-flexbe-onboard";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_onboard/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "6c0a24d91695caef29822f2424261d740b048edb814c6fb93d64a24aef6944eb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-states launch-ros rclpy ];

  meta = {
    description = "flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
