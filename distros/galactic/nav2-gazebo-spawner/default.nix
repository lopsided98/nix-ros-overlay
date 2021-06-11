
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-lint-auto, ament-lint-common, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-nav2-gazebo-spawner";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_gazebo_spawner/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "3ad41e9c550800bfff8a7c2bee1b99983b385b333503a63ab66cb9d7c1ead029";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Package for spawning a robot model into Gazebo for Nav2'';
    license = with lib.licenses; [ asl20 ];
  };
}
