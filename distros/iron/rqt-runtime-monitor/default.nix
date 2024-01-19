
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, diagnostic-msgs, python-qt-binding, python3Packages, pythonPackages, qt-gui, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-iron-rqt-runtime-monitor";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_runtime_monitor-release/archive/release/iron/rqt_runtime_monitor/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "b3804a85ccf90650f0b0579800c0ca8c2578b794ab7c4dc957f47ba992869c25";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
