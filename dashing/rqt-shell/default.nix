
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, python3Packages, qt-gui-py-common, ament-cmake, rqt-gui-py, qt-gui, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-shell";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/dashing/rqt_shell/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fd47f43bf585960f795c66e8085291f577959199d04750d65ae92e0593847171";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui qt-gui-py-common rqt-gui-py qt-gui python3Packages.catkin-pkg python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
