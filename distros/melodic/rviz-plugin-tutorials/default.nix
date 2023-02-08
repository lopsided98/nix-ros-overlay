
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-rviz-plugin-tutorials";
  version = "0.10.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "visualization_tutorials-release";
        rev = "release/melodic/rviz_plugin_tutorials/0.10.5-1";
        sha256 = "sha256-Yr65TePACQ3d2GvVpzOLnXlbXcDCloFvKD9zbCNTpW8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to write plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
