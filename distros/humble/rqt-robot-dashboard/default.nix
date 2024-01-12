
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-robot-monitor }:
buildRosPackage {
  pname = "ros-humble-rqt-robot-dashboard";
  version = "0.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_dashboard-release/archive/release/humble/rqt_robot_dashboard/0.6.1-3.tar.gz";
    name = "0.6.1-3.tar.gz";
    sha256 = "b38454be3d745cbae51f3ac169ea7ab0089a09e39f2a621ba7fc41bf2ebddc4b";
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
