
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-runtime-monitor";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_runtime_monitor-release/archive/release/rolling/rqt_runtime_monitor/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "1c0b198b4d74e7a69990fe5c8d1400d0b190fa0951979b0f350d2d878e173b72";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
