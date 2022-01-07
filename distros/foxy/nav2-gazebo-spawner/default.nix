
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-lint-auto, ament-lint-common, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-nav2-gazebo-spawner";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_gazebo_spawner/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "ec30455d4b3f44ff31669cafac1e188b61dc2db5046523f8c6c816687e594950";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Package for spawning a robot model into Gazebo for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
