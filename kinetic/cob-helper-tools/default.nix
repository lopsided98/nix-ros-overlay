
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, message-generation, message-runtime, visualization-msgs, dynamic-reconfigure, rospy, diagnostic-msgs, cob-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-helper-tools";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_helper_tools/0.6.10-0.tar.gz;
    sha256 = "80c365e1a89476b53a874970ba302cc40a97b7080f634b8f887e8a7f932176fe";
  };

  propagatedBuildInputs = [ message-runtime visualization-msgs dynamic-reconfigure rospy cob-script-server cob-msgs tf diagnostic-msgs ];
  nativeBuildInputs = [ catkin message-generation dynamic-reconfigure ];

  meta = {
    description = ''Helper scripts for Care-O-bot'';
    #license = lib.licenses.Apache 2.0;
  };
}
