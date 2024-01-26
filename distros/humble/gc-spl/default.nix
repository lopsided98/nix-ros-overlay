
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, gc-spl-interfaces, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-gc-spl";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/humble/gc_spl/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6c66629e3231e1cf4334b8c66377007e5feda341c1ccb37f19323cff49dd3224";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ gc-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = ''GameController-Robot communication in RoboCup SPL'';
    license = with lib.licenses; [ asl20 ];
  };
}
