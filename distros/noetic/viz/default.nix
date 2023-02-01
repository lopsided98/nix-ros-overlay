
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-base, rqt-common-plugins, rqt-robot-plugins, rviz }:
buildRosPackage {
  pname = "ros-noetic-viz";
  version = "1.5.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "metapackages-release";
        rev = "release/noetic/viz/1.5.0-1";
        sha256 = "sha256-4tn/ulwgITJCMhfSs6YMF3PpaCf+v+iJVGCYUbSbiHE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-base rqt-common-plugins rqt-robot-plugins rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
