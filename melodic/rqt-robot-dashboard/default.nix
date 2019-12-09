
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, diagnostic-msgs, catkin, rqt-console, rqt-gui-py, qt-gui, rqt-nav-view, rospy, rqt-robot-monitor, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-robot-dashboard";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_dashboard-release/archive/release/melodic/rqt_robot_dashboard/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "19eb8bffb5697ef7e7d7bc23cf7cda4e3446e6415a40e53987095b85bb9b8568";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui diagnostic-msgs rqt-console rqt-gui-py qt-gui rqt-nav-view rospy rqt-robot-monitor python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_dashboard provides an infrastructure for building robot dashboard plugins in rqt.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
