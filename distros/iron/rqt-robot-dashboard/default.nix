
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-robot-monitor }:
buildRosPackage {
  pname = "ros-iron-rqt-robot-dashboard";
  version = "0.6.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_dashboard-release/archive/release/iron/rqt_robot_dashboard/0.6.1-4.tar.gz";
    name = "0.6.1-4.tar.gz";
    sha256 = "8c41a7f017815f68608f0c6e75aa6097a7b1a52eefe6a44769958b9029a3ce89";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  propagatedBuildInputs = [ diagnostic-msgs python-qt-binding qt-gui rclpy rqt-console rqt-gui rqt-gui-py rqt-robot-monitor ];
  nativeBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = ''rqt_robot_dashboard provides an infrastructure for building robot dashboard plugins in rqt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
