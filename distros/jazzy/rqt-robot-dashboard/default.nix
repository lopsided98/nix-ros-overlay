
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-robot-monitor }:
buildRosPackage {
  pname = "ros-jazzy-rqt-robot-dashboard";
  version = "0.6.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_dashboard-release/archive/release/jazzy/rqt_robot_dashboard/0.6.1-5.tar.gz";
    name = "0.6.1-5.tar.gz";
    sha256 = "48a1134702cf1531fe3ab88a6d12f51a2419d848d985b36ace7889fca58bd8dd";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ diagnostic-msgs python-qt-binding qt-gui rclpy rqt-console rqt-gui rqt-gui-py rqt-robot-monitor ];
  nativeBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = "rqt_robot_dashboard provides an infrastructure for building robot dashboard plugins in rqt.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
