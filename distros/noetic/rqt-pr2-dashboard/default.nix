
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pr2-msgs, pr2-power-board, python3Packages, roslib, rospy, rqt-gui, rqt-gui-py, rqt-robot-dashboard, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rqt-pr2-dashboard";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_pr2_dashboard-release/archive/release/noetic/rqt_pr2_dashboard/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "3826a38110940ff6e51a6c42243ae8f3fa670b186df64d7d8cd2c2aef7918e05";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-msgs pr2-power-board roslib rospy rqt-gui rqt-gui-py rqt-robot-dashboard std-msgs std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_pr2_dashboard is a GUI for debugging and controlling low-level state of the PR2.  It shows things like battery status and breaker states, as well as integrating tools like rqt_console and robot_monitor.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
