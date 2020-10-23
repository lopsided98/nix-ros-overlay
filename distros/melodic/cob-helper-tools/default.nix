
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, diagnostic-msgs, dynamic-reconfigure, message-generation, message-runtime, rospy, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-helper-tools";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_helper_tools/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "68453e28fd256f29c023a0b140aeb2d118febfa49c27e032ea822f4f68a04e99";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ cob-msgs cob-script-server diagnostic-msgs dynamic-reconfigure message-runtime rospy std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
