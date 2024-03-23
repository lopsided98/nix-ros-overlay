
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, qt-gui, rqt-gui }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui-py";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui_py/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "8f4a77909e1a50660255d1262cd50f991126bfd30e218d70cbd7d532f0b243b5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt-gui rqt-gui ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
