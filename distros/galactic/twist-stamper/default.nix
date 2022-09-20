
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-twist-stamper";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/galactic/twist_stamper/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "51ec6b0d145275fcfe72e396033ba4834ddb44d69daf8d7ce0e724ad9bf4ca6e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = ''ROS2 package for converting between Twist and TwistStamped messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
