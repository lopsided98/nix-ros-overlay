
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, gc-spl-interfaces, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-gc-spl";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/gc_spl/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "5dc566d1f4fd15a22471b7b4f65f1e2f12d58f79c0037056606dd12cbf27bb14";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ gc-spl-interfaces python3Packages.construct rclpy ];

  meta = {
    description = ''GameController-Robot communication in RoboCup SPL'';
    license = with lib.licenses; [ asl20 ];
  };
}
