
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-twist-stamper";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/iron/twist_stamper/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "72766183eff6ae710b6c3ad2076c5a18ae1c596622cddd0029d2f1a0177ab952";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = ''ROS2 package for converting between Twist and TwistStamped messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
