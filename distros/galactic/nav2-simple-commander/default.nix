
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-galactic-nav2-simple-commander";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_simple_commander/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "a29bbd6aed118add6a31aad49caee86135dcb8518fa18e49028ba0a089df4e41";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs geometry-msgs lifecycle-msgs nav2-msgs rclpy ];

  meta = {
    description = ''An importable library for writing mobile robot applications in python3'';
    license = with lib.licenses; [ asl20 ];
  };
}
