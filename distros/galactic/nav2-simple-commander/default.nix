
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-galactic-nav2-simple-commander";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_simple_commander/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "fc153e56e98c556ac57bebbb07faaba3deef55741b8ad98c24d51285a01c8922";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs geometry-msgs lifecycle-msgs nav2-msgs pythonPackages.enum34 rclpy ];

  meta = {
    description = ''An importable library for writing mobile robot applications in python3'';
    license = with lib.licenses; [ asl20 ];
  };
}
