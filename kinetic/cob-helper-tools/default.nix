
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, message-generation, message-runtime, visualization-msgs, dynamic-reconfigure, rospy, diagnostic-msgs, cob-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-helper-tools";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_helper_tools/0.6.12-1.tar.gz;
    sha256 = "a9e6b54fbe4c9b42d0520741163b85c10a728b0be426878d42611e48a1cbd026";
  };

  buildInputs = [ message-generation dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure cob-script-server message-runtime visualization-msgs rospy diagnostic-msgs cob-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
