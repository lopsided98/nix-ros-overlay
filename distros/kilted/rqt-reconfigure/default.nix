
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-kilted-rqt-reconfigure";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/kilted/rqt_reconfigure/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "3c533047d6d787b59aa0747e1510eb1a061da15f9c40efa32de23d5a9ffb2199";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyyaml qt-gui-py-common rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "This rqt plugin provides a way to view and edit parameters on nodes.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
