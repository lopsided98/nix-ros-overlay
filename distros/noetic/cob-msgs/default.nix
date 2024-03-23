
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-msgs";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/noetic/cob_msgs/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "d02bb299d1c31c31246dfa5aba4110026a1764c4f7c1642d844f1114e2ca117b";
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
