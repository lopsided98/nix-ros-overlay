
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-app-manager, pr2-kinematics, pr2-mannequin-mode, pr2-position-scripts, pr2-teleop-general, pr2-tuckarm }:
buildRosPackage {
  pname = "ros-melodic-pr2-apps";
  version = "0.6.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_apps-release";
        rev = "release/melodic/pr2_apps/0.6.1-0";
        sha256 = "sha256-n4lM0/2qHupjYDPHhit8zpgVnJUF3bVEG9Zjvyisjy0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-app-manager pr2-kinematics pr2-mannequin-mode pr2-position-scripts pr2-teleop-general pr2-tuckarm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic applications for the PR2 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
