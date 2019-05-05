
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, pythonPackages, rqt-gui, qt-gui, qt-gui-py-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-shell";
  version = "0.4.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_shell-release/archive/release/lunar/rqt_shell/0.4.9-0.tar.gz;
    sha256 = "22e7d399d1e2ee56cd67b7a0afa27415f7215f2a3ee770fa19aced5dc510acd0";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui qt-gui qt-gui-py-common python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
