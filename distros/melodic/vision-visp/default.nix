
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, visp-auto-tracker, visp-bridge, visp-camera-calibration, visp-hand2eye-calibration, visp-tracker }:
buildRosPackage {
  pname = "ros-melodic-vision-visp";
  version = "0.13.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "lagadic";
        repo = "vision_visp-release";
        rev = "release/melodic/vision_visp/0.13.0-1";
        sha256 = "sha256-WU6DEFJF4NqlEZG03Bn0E/UE88CaktRwoq+C7rJYpww=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ visp-auto-tracker visp-bridge visp-camera-calibration visp-hand2eye-calibration visp-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
