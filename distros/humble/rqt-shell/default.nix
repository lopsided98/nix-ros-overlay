
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-rqt-shell";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/humble/rqt_shell/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "ff2799774bc4ba6b5c73bd90cc0a50cc7117d16dc601e343039c5bd107cadb63";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
