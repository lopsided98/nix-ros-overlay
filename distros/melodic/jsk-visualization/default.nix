
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, jsk-interactive-test, jsk-rqt-plugins, jsk-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-jsk-visualization";
  version = "2.1.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_visualization-release";
        rev = "release/melodic/jsk_visualization/2.1.8-1";
        sha256 = "sha256-sR2bHaoN3KTK1cAi9+Maizm3PFbNpLjALHa3FNCXjAc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jsk-interactive jsk-interactive-marker jsk-interactive-test jsk-rqt-plugins jsk-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains visualization package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
