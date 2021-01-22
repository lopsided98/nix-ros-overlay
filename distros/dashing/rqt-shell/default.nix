
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-dashing-rqt-shell";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/dashing/rqt_shell/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fd47f43bf585960f795c66e8085291f577959199d04750d65ae92e0593847171";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg qt-gui qt-gui-py-common rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
