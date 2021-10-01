
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, diagnostic-msgs, python-qt-binding, python3Packages, pythonPackages, qt-gui, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-foxy-rqt-runtime-monitor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_runtime_monitor-release/archive/release/foxy/rqt_runtime_monitor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "dcc8128caebc7c57f725c94691de328ebcb37085a739cb610e2d8135c43ef4c1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
