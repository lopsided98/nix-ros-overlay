
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-melodic-rosemacs";
  version = "0.4.16-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "code-iai-release";
        repo = "ros_emacs_utils-release";
        rev = "release/melodic/rosemacs/0.4.16-1";
        sha256 = "sha256-efE67s2F8Rysz7X1Gp7S7cHtDKmZ54rOAhl3BWii3hc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS tools for those who live in Emacs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
