
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, game-controller-spl-interfaces, python3Packages, pythonPackages, r2r-spl-test-interfaces, rclpy, rosidl-parser }:
buildRosPackage {
  pname = "ros-iron-r2r-spl";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/iron/r2r_spl/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e40befb3b13876f5a9d18f3ead2033f885f6466b4b4d3dfe96b37511579e8802";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.numpy pythonPackages.pytest r2r-spl-test-interfaces ];
  propagatedBuildInputs = [ game-controller-spl-interfaces python3Packages.construct rclpy rosidl-parser ];

  meta = {
    description = "Robot-to-Robot Communication in RoboCup Standard Platform League";
    license = with lib.licenses; [ asl20 ];
  };
}
