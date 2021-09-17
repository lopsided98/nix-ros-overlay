
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, dynamic-reconfigure, fkie-master-discovery, fkie-master-sync, fkie-multimaster-msgs, fkie-node-manager-daemon, python-qt-binding, python3Packages, rosgraph, roslaunch, roslib, rosmsg, rospy, rosservice, rqt-gui, rqt-reconfigure, screen, xterm }:
buildRosPackage {
  pname = "ros-noetic-fkie-node-manager";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_node_manager/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "cc1bfb1eb02d1e7e28feb6902e61121f928b01a74f0b9204299386bd45318b73";
  };

  buildType = "catkin";
  buildInputs = [ python3Packages.catkin-pkg ];
  propagatedBuildInputs = [ diagnostic-msgs dynamic-reconfigure fkie-master-discovery fkie-master-sync fkie-multimaster-msgs fkie-node-manager-daemon python-qt-binding python3Packages.docutils python3Packages.paramiko python3Packages.pycryptodomex python3Packages.pyqt5_with_qtwebkit python3Packages.ruamel_yaml rosgraph roslaunch roslib rosmsg rospy rosservice rqt-gui rqt-reconfigure screen xterm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical interface, written in PySide, to manage the running and 
     configured ROS nodes on different hosts. For discovering 
     the running ROS master master_discovery node will be used.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
