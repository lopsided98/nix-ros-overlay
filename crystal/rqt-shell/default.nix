
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, python-qt-binding, rqt-gui, qt-gui, python3Packages, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-crystal-rqt-shell";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/crystal/rqt_shell/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "5a8ea5e58a69cf9d636cf5fb54acc62e8c3d2ad5acea86c0361c2d613c1fb6ab";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py python3Packages.catkin-pkg python-qt-binding rqt-gui qt-gui qt-gui-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
