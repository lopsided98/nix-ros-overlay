
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-interface, pr2-controller-manager, pr2-hardware-interface, pr2-mechanism-diagnostics, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-noetic-pr2-mechanism";
  version = "1.8.21-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_mechanism-release";
        rev = "release/noetic/pr2_mechanism/1.8.21-1";
        sha256 = "sha256-hjcv//Amj4NPiaL05WCAhg62JgE0gQ4t6f97Uiu7itA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-controller-interface pr2-controller-manager pr2-hardware-interface pr2-mechanism-diagnostics pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mechanism stack contains the infrastructure to control the PR2 robot in a hard realtime control loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
