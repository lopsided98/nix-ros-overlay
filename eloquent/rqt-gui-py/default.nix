
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, qt-gui, ament-lint-common, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rqt-gui-py";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/eloquent/rqt_gui_py/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "a3d22b4428692e17dceb3518030a60137cc52a1dac898ea1a0336f20845308e0";
  };

  buildType = "ament_python";
  buildInputs = [ rqt-gui qt-gui ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rqt-gui qt-gui ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
