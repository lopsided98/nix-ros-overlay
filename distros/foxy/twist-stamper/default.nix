
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-twist-stamper";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/foxy/twist_stamper/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "21f3f767fd9208615d73dde7aaedc46f144b3c2fe365a34bd25296100d73e814";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = ''ROS2 package for converting between Twist and TwistStamped messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
