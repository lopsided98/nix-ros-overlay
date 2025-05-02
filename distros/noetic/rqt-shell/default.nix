
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-shell";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_shell-release/archive/release/noetic/rqt_shell/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "0ddc3813f88dc90bd708f763030a4f7f20cfe68e88a398dd700e486bcef1df63";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_shell is a Python GUI plugin providing an interactive shell.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
