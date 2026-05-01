
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-runtime-monitor";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_runtime_monitor-release/archive/release/lyrical/rqt_runtime_monitor/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "e04fcbe7860dd91e66164da5709a4d70eb83090787bf7f59a3506b8f292b9185";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
