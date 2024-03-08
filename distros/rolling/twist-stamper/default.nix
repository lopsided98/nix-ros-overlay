
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-twist-stamper";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/rolling/twist_stamper/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "a9c400c82132e257720704677912d62bf756da099a4e799c09b991a26bb93e7f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = ''ROS2 package for converting between Twist and TwistStamped messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
