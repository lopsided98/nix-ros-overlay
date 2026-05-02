
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-twist-stamper";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/rolling/twist_stamper/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "ba3188a82e87044b752b3ccae9fe5ab3724b1a4c3dd0f7bc4105a9c742f96eb5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = "ROS2 package for converting between Twist and TwistStamped messages";
    license = with lib.licenses; [ asl20 ];
  };
}
