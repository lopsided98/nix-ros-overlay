
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-shell";
  version = "1.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/lyrical/rqt_shell/1.4.1-3.tar.gz";
    name = "1.4.1-3.tar.gz";
    sha256 = "0114402e0e73add85bac74f9420fcb929ff93df88cdb4d243c01921eb45318de";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_shell is a Python GUI plugin providing an interactive shell.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
