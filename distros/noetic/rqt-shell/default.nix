
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-shell";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_shell-release/archive/release/noetic/rqt_shell/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "1efdc24496c86ae5f56e66517821bc13dbab53c9484465265cf512d4953a24da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
