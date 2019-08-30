
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, message-generation, message-runtime, visualization-msgs, dynamic-reconfigure, rospy, diagnostic-msgs, cob-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-helper-tools";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_helper_tools/0.6.14-1.tar.gz;
    sha256 = "4296d985f0b01a60e89fd37fd14e3b7c322cbd841701a9a244d11954cdcf7921";
  };

  buildInputs = [ message-generation dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure cob-script-server message-runtime visualization-msgs rospy diagnostic-msgs cob-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
