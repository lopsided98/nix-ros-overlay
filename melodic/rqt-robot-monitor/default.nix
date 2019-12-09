
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, diagnostic-msgs, qt-gui-py-common, rqt-py-common, pythonPackages, catkin, rqt-gui-py, qt-gui, rospy, rqt-bag, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-robot-monitor";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_monitor-release/archive/release/melodic/rqt_robot_monitor/0.5.9-1.tar.gz";
    name = "0.5.9-1.tar.gz";
    sha256 = "30aa7f05721a5d681de9c27d5b5de3c68d719bdbc2a72748ef2166c972e4e055";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui diagnostic-msgs qt-gui-py-common rqt-py-common pythonPackages.rospkg rqt-gui-py qt-gui rospy rqt-bag python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_monitor displays diagnostics_agg topics messages that
   are published by <a href="http://www.ros.org/wiki/diagnostic_aggregator">diagnostic_aggregator</a>.
   rqt_robot_monitor is a direct port to rqt of
   <a href="http://www.ros.org/wiki/robot_monitor">robot_monitor</a>. All
   diagnostics are fall into one of three tree panes depending on the status of
   diagnostics (normal, warning, error/stale). Status are shown in trees to
   represent their hierarchy. Worse status dominates the higher level status.<br/>
   <ul>
    Ex. 'Computer' category has 3 sub devices. 2 are green but 1 is error. Then
        'Computer' becomes error.
   </ul>
  You can look at the detail of each status by double-clicking the tree nodes.<br/>

  Currently re-usable API to other pkgs are not explicitly provided.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
