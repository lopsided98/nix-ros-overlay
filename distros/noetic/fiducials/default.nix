
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aruco-detect, catkin, fiducial-msgs, fiducial-slam }:
buildRosPackage {
  pname = "ros-noetic-fiducials";
  version = "0.12.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UbiquityRobotics-release";
        repo = "fiducials-release";
        rev = "release/noetic/fiducials/0.12.0-1";
        sha256 = "sha256-lygkBaUnpPKgoopTvLGqUxvlbUig3MTi9MOoSTTs38o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ aruco-detect fiducial-msgs fiducial-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization using fiducial markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
