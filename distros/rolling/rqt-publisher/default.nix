
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, python3Packages, pythonPackages, qt-gui-py-common, rclpy, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-publisher";
  version = "1.7.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/rolling/rqt_publisher/1.7.1-2.tar.gz";
    name = "1.7.1-2.tar.gz";
    sha256 = "414bec61911c41978687996081e6738772eaabce13686d8b252c622fc5bb8524";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.numpy qt-gui-py-common rclpy rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
