
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rospy, rqt-console, rqt-gui, rqt-gui-py, rqt-nav-view, rqt-robot-monitor }:
buildRosPackage {
  pname = "ros-noetic-rqt-robot-dashboard";
  version = "0.5.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_dashboard-release/archive/release/noetic/rqt_robot_dashboard/0.5.8-1.tar.gz";
    name = "0.5.8-1.tar.gz";
    sha256 = "0f6a57bad9cf5b6fdbbbe7d44fe44dbaf76f8bee2fa096853e029d5a44eba462";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ diagnostic-msgs python-qt-binding qt-gui rospy rqt-console rqt-gui rqt-gui-py rqt-nav-view rqt-robot-monitor ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rqt_robot_dashboard provides an infrastructure for building robot dashboard plugins in rqt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
