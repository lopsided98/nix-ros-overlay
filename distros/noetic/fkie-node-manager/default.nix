
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, dynamic-reconfigure, fkie-master-discovery, fkie-master-sync, fkie-multimaster-msgs, fkie-node-manager-daemon, python-qt-binding, python3Packages, rosgraph, roslaunch, roslib, rosmsg, rospy, rosservice, rqt-gui, rqt-reconfigure, screen, xterm }:
buildRosPackage {
  pname = "ros-noetic-fkie-node-manager";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_node_manager/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "571301d3cf4fc04d38cc93ac664121498687bd1e4b695e09ba4d27bc44cfb35d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs dynamic-reconfigure fkie-master-discovery fkie-master-sync fkie-multimaster-msgs fkie-node-manager-daemon python-qt-binding python3Packages.docutils python3Packages.paramiko python3Packages.pycryptodomex python3Packages.ruamel_yaml rosgraph roslaunch roslib rosmsg rospy rosservice rqt-gui rqt-reconfigure screen xterm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical interface, written in PySide, to manage the running and 
     configured ROS nodes on different hosts. For discovering 
     the running ROS master master_discovery node will be used.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
