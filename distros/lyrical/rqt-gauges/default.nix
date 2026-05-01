
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-gauges";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_gauges-release/archive/release/lyrical/rqt_gauges/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "516298690a25c57b306eb3b6f0f1a072a011f80bddfaec90283ee12df7a01551";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "Visualization plugin for several sensors.";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
