
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-publisher";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/rolling/rqt_publisher/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "f42d3a8b629238e4d3429b3a39ba6804b66f507d09a430726d63dedac39f2258";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.numpy qt-gui-py-common rclpy rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
