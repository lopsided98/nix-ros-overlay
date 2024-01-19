
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-dotgraph, rosgraph, rosgraph-msgs, roslib, rosnode, rospy, rosservice, rostopic, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-graph";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_graph-release/archive/release/noetic/rqt_graph/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "f9aaccd3cd5c2fced10194e48880281ada1f61ad9bea14db7e7fa1c5c85ed8c9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-dotgraph rosgraph rosgraph-msgs roslib rosnode rospy rosservice rostopic rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_graph provides a GUI plugin for visualizing the ROS
      computation graph.<br/>
      Its components are made generic so that other packages
      where you want to achieve graph representation can depend upon this pkg
      (use <a href="http://www.ros.org/wiki/rqt_dep">rqt_dep</a> to find out
      the pkgs that depend. rqt_dep itself depends on rqt_graph too).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
