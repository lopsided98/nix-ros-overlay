
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-shell";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/kilted/rqt_shell/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "407b4c43be4a92aed25d9924dd156ff63574f97f5087c4ee58b83188405bca65";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_shell is a Python GUI plugin providing an interactive shell.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
