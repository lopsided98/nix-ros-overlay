
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-twist-stamper";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/joshnewans/twist_stamper-release/archive/release/galactic/twist_stamper/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "97147c9dee8f70d3de5a198f96be3f521aa101ff2edf690a9712a5764ab609c4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = ''ROS2 package for converting between Twist and TwistStamped messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
