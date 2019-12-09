
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, python3Packages, qt-gui-py-common, ament-cmake, rqt-gui-py, qt-gui, python-qt-binding }:
buildRosPackage {
  pname = "ros-eloquent-rqt-shell";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_shell-release/archive/release/eloquent/rqt_shell/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b8003e5f020d4e8e3d3d2c597ccb11f6f10656e434b0f8d9cd9800a6cdf3032b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui qt-gui-py-common rqt-gui-py qt-gui python3Packages.catkin-pkg python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_shell is a Python GUI plugin providing an interactive shell.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
