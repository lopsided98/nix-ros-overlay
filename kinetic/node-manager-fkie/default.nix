
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, default-cfg-fkie, rqt-gui, rosservice, screen, rosgraph, rospy, diagnostic-msgs, pythonPackages, rqt-reconfigure, xterm, roslaunch, roslib, master-sync-fkie, rosmsg, catkin, python-qt-binding, multimaster-msgs-fkie, dynamic-reconfigure, master-discovery-fkie }:
buildRosPackage {
  pname = "ros-kinetic-node-manager-fkie";
  version = "0.8.11";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/node_manager_fkie/0.8.11-0.tar.gz;
    sha256 = "21335712cf8a99914be9feeeed1bf7c4a4fa0592b6c7c16ae848b6ecd0c8f672";
  };

  propagatedBuildInputs = [ master-sync-fkie default-cfg-fkie rqt-gui rosmsg rosservice screen rosgraph rospy pythonPackages.paramiko diagnostic-msgs python-qt-binding pythonPackages.docutils multimaster-msgs-fkie rqt-reconfigure xterm dynamic-reconfigure master-discovery-fkie roslaunch roslib ];
  nativeBuildInputs = [ diagnostic-msgs catkin multimaster-msgs-fkie master-discovery-fkie ];

  meta = {
    description = ''Graphical interface, written in PySide, to manage the running and 
     configured ROS nodes on different hosts. For discovering 
     the running ROS master master_discovery node will be used.'';
    #license = lib.licenses.BSD, some icons are licensed under the GNU Lesser General Public License (LGPL) or Creative Commons Attribution-Noncommercial 3.0 License;
  };
}
