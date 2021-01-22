
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kinetic-rqt-shell";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_shell-release/archive/release/kinetic/rqt_shell/0.4.9-0.tar.gz";
    name = "0.4.9-0.tar.gz";
    sha256 = "a3c19eb189acd631299f7012f0224e39f1ac2ac76b071f1796606f22619ad2b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
