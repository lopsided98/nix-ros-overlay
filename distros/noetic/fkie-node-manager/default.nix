
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, dynamic-reconfigure, fkie-master-discovery, fkie-master-sync, fkie-multimaster-msgs, fkie-node-manager-daemon, python-qt-binding, python3Packages, rosgraph, roslaunch, roslib, rosmsg, rospy, rosservice, rqt-gui, rqt-reconfigure, screen, xterm }:
buildRosPackage {
  pname = "ros-noetic-fkie-node-manager";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_node_manager/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "b0bbcec7e9087a14a19c45255242d39662ed77f2b08bb6e40f385c25f2e2f017";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs dynamic-reconfigure fkie-master-discovery fkie-master-sync fkie-multimaster-msgs fkie-node-manager-daemon python-qt-binding python3Packages.docutils python3Packages.paramiko python3Packages.pycryptodomex python3Packages.pyqt5_with_qtwebkit python3Packages.ruamel_yaml rosgraph roslaunch roslib rosmsg rospy rosservice rqt-gui rqt-reconfigure screen xterm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical interface, written in PySide, to manage the running and 
     configured ROS nodes on different hosts. For discovering 
     the running ROS master master_discovery node will be used.'';
    license = with lib.licenses; [ "BSD-&-some-icons-are-licensed-under-LGPL-or-CC-BY-NC-3.0" ];
  };
}
