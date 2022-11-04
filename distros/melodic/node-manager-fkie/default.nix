
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, default-cfg-fkie, diagnostic-msgs, dynamic-reconfigure, master-discovery-fkie, master-sync-fkie, multimaster-msgs-fkie, python-qt-binding, pythonPackages, rosgraph, roslaunch, roslib, rosmsg, rospy, rosservice, rqt-gui, rqt-reconfigure, screen, xterm }:
buildRosPackage {
  pname = "ros-melodic-node-manager-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/node_manager_fkie/0.8.12-0.tar.gz";
    name = "0.8.12-0.tar.gz";
    sha256 = "6b4d7ed02437aa8bb4675c90822d4215267b78598d7125b49bf6b0f1b584cef0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ default-cfg-fkie diagnostic-msgs dynamic-reconfigure master-discovery-fkie master-sync-fkie multimaster-msgs-fkie python-qt-binding pythonPackages.docutils pythonPackages.paramiko rosgraph roslaunch roslib rosmsg rospy rosservice rqt-gui rqt-reconfigure screen xterm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical interface, written in PySide, to manage the running and 
     configured ROS nodes on different hosts. For discovering 
     the running ROS master master_discovery node will be used.'';
    license = with lib.licenses; [ "BSD-&-some-icons-are-licensed-under-LGPL-or-CC-BY-NC-3.0" ];
  };
}
