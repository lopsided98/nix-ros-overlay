
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-minimal-publisher";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_minimal_publisher/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "366d1da6c3a2621c9751911b8611a2804da6bd2e62822988c0b208293a3e0d1c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = "Examples of minimal publishers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
