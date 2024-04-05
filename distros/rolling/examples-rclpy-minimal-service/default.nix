
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-minimal-service";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_minimal_service/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "ec41955b1aca05551bdaa427b79308b389f5d48b336379929ffcd27a4f18cbb5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Examples of minimal service servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
