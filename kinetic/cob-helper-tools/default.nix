
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, message-generation, message-runtime, visualization-msgs, dynamic-reconfigure, rospy, diagnostic-msgs, cob-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-helper-tools";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_helper_tools/0.6.11-0.tar.gz;
    sha256 = "f355a4fc81149bfdc587a02eca33e8197d35d49e463e7ab38dfe60b6fdcb1642";
  };

  propagatedBuildInputs = [ message-runtime visualization-msgs dynamic-reconfigure rospy cob-script-server cob-msgs tf diagnostic-msgs ];
  nativeBuildInputs = [ catkin message-generation dynamic-reconfigure ];

  meta = {
    description = ''Helper scripts for Care-O-bot'';
    #license = lib.licenses.Apache 2.0;
  };
}
