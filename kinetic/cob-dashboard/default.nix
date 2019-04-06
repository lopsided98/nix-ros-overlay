
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rqt-gui, rqt-robot-dashboard, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cob-dashboard";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_dashboard/0.6.11-0.tar.gz;
    sha256 = "bdd8484af7c55e07bac8e57c4cacd493d25bfc405012c5ebf69b95bd162e822f";
  };

  propagatedBuildInputs = [ roslib rqt-robot-dashboard rospy cob-msgs rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    #license = lib.licenses.Apache 2.0;
  };
}
