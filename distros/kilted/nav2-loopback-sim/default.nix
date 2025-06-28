
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, nav-msgs, python3Packages, rclpy, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-nav2-loopback-sim";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav2_loopback_sim/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ef1929bac206739f2dd877d83e995425f9af11804bc7f2d7a92484b5f39bd207";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.transforms3d rclpy tf-transformations tf2-ros ];

  meta = {
    description = "A loopback simulator to replace physics simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
