
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-robot-monitor }:
buildRosPackage {
  pname = "ros-lyrical-rqt-robot-dashboard";
  version = "0.6.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_dashboard-release/archive/release/lyrical/rqt_robot_dashboard/0.6.1-6.tar.gz";
    name = "0.6.1-6.tar.gz";
    sha256 = "3fa117a62211e134e5180e2cb1246a827dd5980beb4e4efc56bd0bd5fc33ea80";
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
