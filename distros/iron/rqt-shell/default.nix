
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-iron-rqt-shell";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/iron/rqt_shell/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "cbffc61aabf8d7befd3f55f4b92468db4cf6a4342122d48eb9acfe0cedb39b42";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
