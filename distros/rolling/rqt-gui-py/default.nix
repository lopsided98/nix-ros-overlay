
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, qt-gui, rqt-gui }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui-py";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui_py/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "3232285f3822cdee254e1ba80da89f30e26055944c47c1f56ec445bdd08275d9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt-gui rqt-gui ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
