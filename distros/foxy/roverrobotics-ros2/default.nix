
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rover-bringup, rover-description, rover-driver, rover-msgs, rover-navigation, rover-teleop }:
buildRosPackage {
  pname = "ros-foxy-roverrobotics-ros2";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RoverRobotics-release";
        repo = "roverrobotics_ros2-release";
        rev = "release/foxy/roverrobotics_ros2/0.1.1-2";
        sha256 = "sha256-3Si9TWZpxKDRzuNUXNPg9dlFzEi0tfEVjJW1meif51o=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rover-bringup rover-description rover-driver rover-msgs rover-navigation rover-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for communicating with a Rover Pro.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
