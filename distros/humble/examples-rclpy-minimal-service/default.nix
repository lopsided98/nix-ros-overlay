
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-minimal-service";
  version = "0.15.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_minimal_service/0.15.3-1.tar.gz";
    name = "0.15.3-1.tar.gz";
    sha256 = "69c39822f70f063723a5248a4f5cbcf94ee551060638f2f3c53a0f73b08c9030";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Examples of minimal service servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
