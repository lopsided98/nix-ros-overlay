
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-robot-monitor }:
buildRosPackage {
  pname = "ros-galactic-rqt-robot-dashboard";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_dashboard-release/archive/release/galactic/rqt_robot_dashboard/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "3aa35f410acb280ae3e6761776f928fe839313451b269be221c7841a7872235e";
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
