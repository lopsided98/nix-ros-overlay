
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-twist-stamper";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/rolling/twist_stamper/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "3edbea807659e1c84efe139ff8c0a231049ebe2b0cb359f6a76396fa8fe4c75f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = ''ROS2 package for converting between Twist and TwistStamped messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
