
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-dotgraph, rosgraph, rosgraph-msgs, roslib, rosnode, rospy, rosservice, rostopic, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-graph";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_graph-release/archive/release/melodic/rqt_graph/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "a7a56af64f801c609b96cffa380f0571800c2f7f1a759f95bd68e0afb03816f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-dotgraph rosgraph rosgraph-msgs roslib rosnode rospy rosservice rostopic rqt-gui rqt-gui-py ];
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
