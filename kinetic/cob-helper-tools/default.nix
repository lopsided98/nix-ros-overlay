
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, diagnostic-msgs, cob-msgs, dynamic-reconfigure, tf, catkin, rospy, visualization-msgs, message-runtime, cob-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-helper-tools";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_helper_tools/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "d4411bf27a19bff0b2321b0ecb5e4205146eba45391341fbd62a646f878cc6d0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation dynamic-reconfigure ];
  propagatedBuildInputs = [ diagnostic-msgs cob-msgs dynamic-reconfigure tf rospy visualization-msgs message-runtime cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
