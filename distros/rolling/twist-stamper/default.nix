
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-twist-stamper";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/rolling/twist_stamper/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "8c138365a9525cd28da2ea7cdf0bf80482e8518489d920be00344b67cad0eeb7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = "ROS2 package for converting between Twist and TwistStamped messages";
    license = with lib.licenses; [ asl20 ];
  };
}
