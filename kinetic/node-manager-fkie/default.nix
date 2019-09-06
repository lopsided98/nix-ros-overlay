
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, default-cfg-fkie, rqt-gui, rosservice, screen, rosgraph, rospy, diagnostic-msgs, pythonPackages, rqt-reconfigure, xterm, roslaunch, roslib, master-sync-fkie, rosmsg, catkin, python-qt-binding, multimaster-msgs-fkie, dynamic-reconfigure, master-discovery-fkie }:
buildRosPackage {
  pname = "ros-kinetic-node-manager-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/node_manager_fkie/0.8.12-0.tar.gz";
    name = "0.8.12-0.tar.gz";
    sha256 = "bfa6c0a6113f833c6b2d62a088666c584c678003e9494959e8d479dfddcd26ef";
  };

  buildType = "catkin";
  buildInputs = [ diagnostic-msgs multimaster-msgs-fkie master-discovery-fkie ];
  propagatedBuildInputs = [ default-cfg-fkie rqt-gui rosservice screen rosgraph rospy pythonPackages.paramiko diagnostic-msgs pythonPackages.docutils rqt-reconfigure xterm roslaunch roslib master-sync-fkie rosmsg python-qt-binding multimaster-msgs-fkie dynamic-reconfigure master-discovery-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical interface, written in PySide, to manage the running and 
     configured ROS nodes on different hosts. For discovering 
     the running ROS master master_discovery node will be used.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
