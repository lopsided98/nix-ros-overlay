
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, message-generation, message-runtime, visualization-msgs, dynamic-reconfigure, rospy, diagnostic-msgs, cob-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-helper-tools";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_helper_tools/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "c75043752d83abf34bc0d49dc3376d3c64d74c71e7b7c50195c23bca5a3cbfc9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure cob-script-server message-runtime visualization-msgs rospy diagnostic-msgs cob-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
