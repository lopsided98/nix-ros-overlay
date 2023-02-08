
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, robot-calibration }:
buildRosPackage {
  pname = "ros-noetic-fetch-calibration";
  version = "0.9.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_ros-release";
        rev = "release/noetic/fetch_calibration/0.9.1-1";
        sha256 = "sha256-gJ07FB3Sd+igl7vg/QBDKCz1vSLrxJhR8EzeqRu46aE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
