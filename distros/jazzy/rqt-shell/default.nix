
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, pythonPackages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-shell";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/jazzy/rqt_shell/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "b3958355365d89e77203f54d0f78562025f19058dedab6b6ffd08f1b3032041f";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_shell is a Python GUI plugin providing an interactive shell.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
