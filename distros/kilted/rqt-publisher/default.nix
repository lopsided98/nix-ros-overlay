
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-kilted-rqt-publisher";
  version = "1.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/kilted/rqt_publisher/1.9.0-2.tar.gz";
    name = "1.9.0-2.tar.gz";
    sha256 = "31f2072b77ce6910347f547e0ba5f5a5a3e110d695fd768d462d52b58c65cf01";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.numpy qt-gui-py-common rclpy rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
