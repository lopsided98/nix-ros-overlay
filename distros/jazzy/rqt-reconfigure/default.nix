
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-reconfigure";
  version = "1.6.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/jazzy/rqt_reconfigure/1.6.2-3.tar.gz";
    name = "1.6.2-3.tar.gz";
    sha256 = "c4c1b49c0d2f8d5f246272cee9967716d4f2377dfda5c6776cfa796314a972df";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyyaml qt-gui-py-common rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "This rqt plugin provides a way to view and edit parameters on nodes.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
