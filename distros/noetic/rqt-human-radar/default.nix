
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hri, qt5, roscpp, rqt-gui, rqt-gui-cpp, tf }:
buildRosPackage {
  pname = "ros-noetic-rqt-human-radar";
  version = "0.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros4hri";
        repo = "rqt_human_radar-release";
        rev = "release/noetic/rqt_human_radar/0.2.1-1";
        sha256 = "sha256-5u+Sf9AsOhFqY5yX9XvyugIk/Ap36wrPgfvK5MkXK58=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roscpp ];
  propagatedBuildInputs = [ hri qt5.qtbase qt5.qtsvg rqt-gui rqt-gui-cpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A radar-like visualization for humans in the scene, representing their position, orientation, engagement level'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
