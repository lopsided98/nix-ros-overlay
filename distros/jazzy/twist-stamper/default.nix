
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-twist-stamper";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/jazzy/twist_stamper/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "7cf5e6d3348f56839287c9b10398699b682af7be156839229ff08994c0eea507";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = "ROS2 package for converting between Twist and TwistStamped messages";
    license = with lib.licenses; [ asl20 ];
  };
}
