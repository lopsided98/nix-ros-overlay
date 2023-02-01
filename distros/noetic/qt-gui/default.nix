
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt5, tango-icon-theme }:
buildRosPackage {
  pname = "ros-noetic-qt-gui";
  version = "0.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "qt_gui_core-release";
        rev = "release/noetic/qt_gui/0.4.2-1";
        sha256 = "sha256-CRyxDJ4uVKMNBcNOtvz1V3hvGeo58xmfjOk7GyINgSU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.pyqt5 python3Packages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg tango-icon-theme ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
    It is extensible with Python- and C++-based plugins (implemented in separate packages) which can contribute arbitrary widgets.
    It requires either PyQt or PySide bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
