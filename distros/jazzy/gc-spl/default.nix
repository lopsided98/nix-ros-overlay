
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, gc-spl-interfaces, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-gc-spl";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/jazzy/gc_spl/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "f2619514480a9f13e8ea561f587b4e8b2e48e543b07f9636a6624078d4810036";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ gc-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = "GameController-Robot communication in RoboCup SPL";
    license = with lib.licenses; [ asl20 ];
  };
}
