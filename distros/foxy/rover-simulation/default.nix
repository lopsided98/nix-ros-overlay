
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rover-bringup, rover-navigation }:
buildRosPackage {
  pname = "ros-foxy-rover-simulation";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RoverRobotics-release";
        repo = "roverrobotics_ros2-release";
        rev = "release/foxy/rover_simulation/0.1.1-2";
        sha256 = "sha256-89scNdcIIIG4UGOqPAwpoagcyf7Ibq4wljOnhDFqgB4=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rover-bringup rover-navigation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files for Rover Simulation'';
    license = with lib.licenses; [ bsd3 ];
  };
}
