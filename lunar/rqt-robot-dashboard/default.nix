
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-nav-view, rqt-gui, catkin, qt-gui, rqt-robot-monitor, rqt-console, rospy, diagnostic-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-robot-dashboard";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_robot_dashboard-release/archive/release/lunar/rqt_robot_dashboard/0.5.7-0.tar.gz;
    sha256 = "bd5df61568d54f6ecd2b7826f6ef9f39bae40d53dc9d46c0984ee7eba2e7501f";
  };

  propagatedBuildInputs = [ rqt-gui-py rqt-nav-view rqt-gui qt-gui rqt-robot-monitor rqt-console rospy diagnostic-msgs python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_dashboard provides an infrastructure for building robot dashboard plugins in rqt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
