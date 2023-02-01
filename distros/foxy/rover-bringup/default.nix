
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, rover-driver }:
buildRosPackage {
  pname = "ros-foxy-rover-bringup";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RoverRobotics-release";
        repo = "roverrobotics_ros2-release";
        rev = "release/foxy/rover_bringup/0.1.1-2";
        sha256 = "sha256-nJsNOsWShqt7xcJVc/9mjHDm9AiF8ulelu+VeFYAoko=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher rover-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files and configuration scripts for operation of the Rover and suported sensors.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
