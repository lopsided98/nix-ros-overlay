
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-lint-auto, ament-lint-common, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-nav2-gazebo-spawner";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_gazebo_spawner/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "52f8dbbe1c1dba622358e9890496239d7ec219d133b7455e1e581fe82014c6a6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Package for spawning a robot model into Gazebo for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
