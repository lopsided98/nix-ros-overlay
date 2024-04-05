
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, python3Packages, pythonPackages, qt-gui-py-common, rclpy, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-publisher";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/rolling/rqt_publisher/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "1592d6c2346c985a84cec4bb7bd77e0ad0617d5fab5c85d59fe46e001303cb80";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.numpy qt-gui-py-common rclpy rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
