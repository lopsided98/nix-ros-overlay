
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, python3Packages, qt-gui-py-common, rclpy, rosidl-runtime-py, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-publisher";
  version = "1.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_publisher-release/archive/release/jazzy/rqt_publisher/1.7.3-1.tar.gz";
    name = "1.7.3-1.tar.gz";
    sha256 = "b45206f2caaf32669029f3b74d1afa54fd378dc1c7eb857862765be633bcad4e";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.numpy qt-gui-py-common rclpy rosidl-runtime-py rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
