
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-console";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/rolling/rqt_console/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "b8929d21424acf1e8cc3d633d8a19ef52b7d91a5348b3cd5f8362ae93f429221";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_console provides a GUI plugin for displaying and filtering ROS messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
