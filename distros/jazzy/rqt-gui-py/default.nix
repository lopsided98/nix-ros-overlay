
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, qt-gui, rqt-gui }:
buildRosPackage {
  pname = "ros-jazzy-rqt-gui-py";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/jazzy/rqt_gui_py/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "c5e426c07b4020122392eb75860016b9b62f301ff82f363eddb8598ad442cfe0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt-gui rqt-gui ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
