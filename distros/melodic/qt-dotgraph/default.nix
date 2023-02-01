
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-qt-dotgraph";
  version = "0.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "qt_gui_core-release";
        rev = "release/melodic/qt_dotgraph/0.4.2-1";
        sha256 = "sha256-dkAg/cFhTaG/z2BBkDeDk117Si29jRwrPt/iA+F0h14=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  checkInputs = [ pythonPackages.pygraphviz ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.pydot ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''qt_dotgraph provides helpers to work with dot graphs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
