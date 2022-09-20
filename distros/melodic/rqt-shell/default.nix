
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-shell";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_shell-release/archive/release/melodic/rqt_shell/0.4.9-0.tar.gz";
    name = "0.4.9-0.tar.gz";
    sha256 = "522e34ae2cf5e4af2d14805e70767f394ec88043033a1c6e44324ae58a139001";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
