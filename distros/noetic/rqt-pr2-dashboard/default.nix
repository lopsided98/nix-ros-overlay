
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pr2-msgs, pr2-power-board, roslib, rospy, rqt-gui, rqt-gui-py, rqt-robot-dashboard, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rqt-pr2-dashboard";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_pr2_dashboard-release/archive/release/noetic/rqt_pr2_dashboard/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "51ae20c665634bb53dd74bf1400a74c2727e144e4d2574062bebaf3edf012d18";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-msgs pr2-power-board roslib rospy rqt-gui rqt-gui-py rqt-robot-dashboard std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pr2_dashboard is a GUI for debugging and controlling low-level state of the PR2.  It shows things like battery status and breaker states, as well as integrating tools like rqt_console and robot_monitor.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
