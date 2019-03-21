
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rqt-gui, rqt-robot-dashboard, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cob-dashboard";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_dashboard/0.6.10-0.tar.gz;
    sha256 = "e1a724e27a66d1a4b6913d22f3754712022349d80133c86dae8309d8c83e73c8";
  };

  propagatedBuildInputs = [ roslib rqt-robot-dashboard rospy cob-msgs rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    #license = lib.licenses.Apache 2.0;
  };
}
