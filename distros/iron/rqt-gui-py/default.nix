
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, qt-gui, rqt-gui }:
buildRosPackage {
  pname = "ros-iron-rqt-gui-py";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/iron/rqt_gui_py/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "8e3f8839696376d5c5741f13b0b6d34593535e08e7e1dfd2fe12d3dd82c51b28";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt-gui rqt-gui ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
