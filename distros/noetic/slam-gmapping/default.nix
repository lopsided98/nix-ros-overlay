
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gmapping, openslam-gmapping }:
buildRosPackage {
  pname = "ros-noetic-slam-gmapping";
  version = "1.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "slam_gmapping-release";
        rev = "release/noetic/slam_gmapping/1.4.2-1";
        sha256 = "sha256-4YLypSEaqdDk+RLuRs2KTHo3ItSVm18ttlg+jYhPx0M=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gmapping openslam-gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''slam_gmapping contains a wrapper around gmapping which provides SLAM capabilities.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
