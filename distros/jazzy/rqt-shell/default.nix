
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-shell";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/jazzy/rqt_shell/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "29a80817544394b481bf21199f4ca6c390366a0523962a1b3e958ce556af3bc2";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_shell is a Python GUI plugin providing an interactive shell.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
