
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-reconfigure";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/rolling/rqt_reconfigure/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "1db5afeb324ff26fa017247642f27cca0f7078095179edd4c1ac0c1634981cb5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyyaml qt-gui-py-common rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''This rqt plugin provides a way to view and edit parameters on nodes.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
