
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, pythonPackages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-shell";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/rolling/rqt_shell/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "481759f4332bb2bd996e51a141c433af1cd42282bd02284791e9d471e41859f6";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_shell is a Python GUI plugin providing an interactive shell.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
