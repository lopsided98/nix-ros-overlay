
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, pythonPackages, rosservice, rosgraph-msgs, qt-dotgraph, rosgraph, rostopic, rospy, roslib, python-qt-binding, rosnode }:
buildRosPackage {
  pname = "ros-lunar-rqt-graph";
  version = "0.4.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_graph-release/archive/release/lunar/rqt_graph/0.4.9-0.tar.gz;
    sha256 = "7c25ab92d9b82a4fa51fe4526f6a7edb83f4344cda7c8ad620aae62c186cce23";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rosservice rosgraph-msgs qt-dotgraph rosgraph rostopic rospy roslib python-qt-binding rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_graph provides a GUI plugin for visualizing the ROS
      computation graph.<br/>
      Its components are made generic so that other packages
      where you want to achieve graph representation can depend upon this pkg
      (use <a href="http://www.ros.org/wiki/rqt_dep">rqt_dep</a> to find out
      the pkgs that depend. rqt_dep itself depends on rqt_graph too).'';
    #license = lib.licenses.BSD;
  };
}
