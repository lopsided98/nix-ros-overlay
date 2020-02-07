
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-lint-auto, ament-lint-common, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-nav2-gazebo-spawner";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/nav2_gazebo_spawner/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "e405c02184ca08edcce6e3d672312c6b572f8467ede0ee9bb5233ca3304d2fa1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Package for spawning a robot model into Gazebo for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
