
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-cob-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "59363a11bfee152e46fc580aa8dc768ea9e8323f5e54e72634c9e4e057ea9ea0";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation diagnostic-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime diagnostic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
