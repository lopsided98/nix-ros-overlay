
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-guard-conditions";
  version = "0.16.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "examples-release";
        rev = "release/rolling/examples_rclpy_guard_conditions/0.16.2-1";
        sha256 = "sha256-opSsTBfYzzF4x4NlOoeNI7I5XKM5Nw4txRJoo7Xso1E=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy ];

  meta = {
    description = ''Examples of using guard conditions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
