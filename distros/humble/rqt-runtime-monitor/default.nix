
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, diagnostic-msgs, python-qt-binding, python3Packages, pythonPackages, qt-gui, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-rqt-runtime-monitor";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_runtime_monitor-release/archive/release/humble/rqt_runtime_monitor/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "ae351146e14f6bc95b76fb4992c5e57d9033c0f9d9807263e1fd2cb61acf8f82";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
