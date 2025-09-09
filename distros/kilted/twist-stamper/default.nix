
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-twist-stamper";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/kilted/twist_stamper/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "375b97d2b48d57a940d5165b892f374b149b4755a510dc0baffa339c2efd1075";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = "ROS2 package for converting between Twist and TwistStamped messages";
    license = with lib.licenses; [ asl20 ];
  };
}
