
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-lint-auto, ament-lint-common, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-nav2-gazebo-spawner";
  version = "0.4.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "SteveMacenski";
        repo = "navigation2-release";
        rev = "release/foxy/nav2_gazebo_spawner/0.4.7-1";
        sha256 = "sha256-t5ArmBw0wkO3kCpP+PmnXkVN4MpRX9GPphepWHxFhUw=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Package for spawning a robot model into Gazebo for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
