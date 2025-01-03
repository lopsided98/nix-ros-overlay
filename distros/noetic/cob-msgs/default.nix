
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-msgs";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/noetic/cob_msgs/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "c292f3872efb455dcc72915904bcc6e1f1cd6b6556a449c2832fc5bf37b4e80d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages for representing state information, such as battery information and emergency stop status.";
    license = with lib.licenses; [ asl20 ];
  };
}
