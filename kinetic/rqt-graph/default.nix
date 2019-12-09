
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rosnode, rosgraph, pythonPackages, roslib, rostopic, catkin, rqt-gui-py, qt-dotgraph, rospy, rosservice, rosgraph-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-graph";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_graph-release/archive/release/kinetic/rqt_graph/0.4.9-0.tar.gz";
    name = "0.4.9-0.tar.gz";
    sha256 = "6907a2f583bd3dd212a988ec918b1b6e4e1141be1565cdf138c86c9e4e9a566b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui rosnode rosgraph pythonPackages.rospkg roslib rostopic rqt-gui-py qt-dotgraph rospy rosservice rosgraph-msgs python-qt-binding ];
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
