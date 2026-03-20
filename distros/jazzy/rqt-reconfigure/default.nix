
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-reconfigure";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_reconfigure-release/archive/release/jazzy/rqt_reconfigure/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "a4a3e381f3b05dd82692c3ea988c40c35001612979fd06ff5e8ed013f6ee2b03";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyyaml qt-gui-py-common rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "This rqt plugin provides a way to view and edit parameters on nodes.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
