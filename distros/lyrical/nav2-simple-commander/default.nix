
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, geometry-msgs, lifecycle-msgs, nav2-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-nav2-simple-commander";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_simple_commander/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "ee265677dd487f10354ae28ac5f3c983a4d6ea84308403c773498a2f1951096f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ action-msgs geometry-msgs lifecycle-msgs nav2-msgs rclpy ];

  meta = {
    description = "An importable library for writing mobile robot applications in python3";
    license = with lib.licenses; [ asl20 ];
  };
}
