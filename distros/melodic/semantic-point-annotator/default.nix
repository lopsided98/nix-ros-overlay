
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pcl-ros, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-semantic-point-annotator";
  version = "0.1.28-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_navigation-release";
        rev = "release/melodic/semantic_point_annotator/0.1.28-1";
        sha256 = "sha256-5BjG0wRzSK3lkWyQUrA1Xfs3A6w2SzVlRX8f+D9kNuU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen pcl-ros roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node which annotates 3D point cloud data with semantic labels.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
