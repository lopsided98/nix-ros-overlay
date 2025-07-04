
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-runtime-monitor";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_runtime_monitor-release/archive/release/kilted/rqt_runtime_monitor/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "3c1f596e9a04c45e9a89ca203a3ecd6116b8235306a0bf7fec24de3c4cc499df";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
