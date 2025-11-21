
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-nav2-simple-commander";
  version = "1.1.20-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_simple_commander/1.1.20-1.tar.gz";
    name = "1.1.20-1.tar.gz";
    sha256 = "19c09a344ca2c06f759bd36e15fe163395f486ee850ed0e327e9ca282c7b7cfb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ action-msgs geometry-msgs lifecycle-msgs nav2-msgs rclpy ];

  meta = {
    description = "An importable library for writing mobile robot applications in python3";
    license = with lib.licenses; [ asl20 ];
  };
}
