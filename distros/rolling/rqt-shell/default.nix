
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-shell";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/rolling/rqt_shell/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "04d060a48054ad0e64c5fc63c1ad0c049eb84c1fbc8ed433ecb779e327f678f4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_shell is a Python GUI plugin providing an interactive shell.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
