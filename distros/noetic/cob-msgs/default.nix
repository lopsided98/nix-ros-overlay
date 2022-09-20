
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-msgs";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/cob_msgs/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "e871d7c85cfe1b83c13d3102365ec95e0d3741fa9820ea10b47a26aea9829571";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
