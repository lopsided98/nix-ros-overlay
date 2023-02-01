
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive-marker, jsk-pcl-ros, pr2eus, roseus-tutorials }:
buildRosPackage {
  pname = "ros-melodic-pr2eus-tutorials";
  version = "0.3.14-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_pr2eus-release";
        rev = "release/melodic/pr2eus_tutorials/0.3.14-3";
        sha256 = "sha256-CWuDwOQuod+AbJwVizq2SmlOmIppTC7W33RPsvVRfl0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jsk-interactive-marker jsk-pcl-ros pr2eus roseus-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
