
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-twist-stamper";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/humble/twist_stamper/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "6686cd1b3233765239195167c004979c2f40a918aff85ba7e7cebc98332bea1a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = "ROS2 package for converting between Twist and TwistStamped messages";
    license = with lib.licenses; [ asl20 ];
  };
}
