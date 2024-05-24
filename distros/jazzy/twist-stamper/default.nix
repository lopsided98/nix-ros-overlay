
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-twist-stamper";
  version = "0.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_stamper-release/archive/release/jazzy/twist_stamper/0.0.3-4.tar.gz";
    name = "0.0.3-4.tar.gz";
    sha256 = "404bce67baa04e782a49c2b977a728e08f2745f2e94fb648973a5d8621a11a5f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy std-msgs ];

  meta = {
    description = "ROS2 package for converting between Twist and TwistStamped messages";
    license = with lib.licenses; [ asl20 ];
  };
}
