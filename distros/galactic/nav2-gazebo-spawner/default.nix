
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-lint-auto, ament-lint-common, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-nav2-gazebo-spawner";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_gazebo_spawner/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "d57c036d486adaa41ab7fa70b23850b543a83ea222a07ecadc3e7d4b09a23651";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Package for spawning a robot model into Gazebo for Nav2'';
    license = with lib.licenses; [ asl20 ];
  };
}
