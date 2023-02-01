
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, default-cfg-fkie, diagnostic-msgs, dynamic-reconfigure, master-discovery-fkie, master-sync-fkie, multimaster-msgs-fkie, python-qt-binding, pythonPackages, rosgraph, roslaunch, roslib, rosmsg, rospy, rosservice, rqt-gui, rqt-reconfigure, screen, xterm }:
buildRosPackage {
  pname = "ros-melodic-node-manager-fkie";
  version = "0.8.12";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fkie-release";
        repo = "multimaster_fkie-release";
        rev = "release/melodic/node_manager_fkie/0.8.12-0";
        sha256 = "sha256-F+OaFhYu1rHziJbhFT8LmvfVR85qhKWD2W4NyngIpko=";
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
