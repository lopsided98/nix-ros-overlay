
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-calibration-launch }:
buildRosPackage {
  pname = "ros-melodic-pr2-se-calibration-launch";
  version = "1.0.11-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UNR-RoboticsResearchLab";
        repo = "pr2_calibration-release";
        rev = "release/melodic/pr2_se_calibration_launch/1.0.11-3";
        sha256 = "sha256-5sCZFW0EeBGrDlLZbdwzGXKeHtphroYaC4kLRRJM6t8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-calibration-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_se_calibration_launch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
