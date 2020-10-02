
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-msgs";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/cob_msgs/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "f26d24ed18d504e15454b2f8fd856cd1f83e80cc703556594bb7eac60ccaf613";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for representing state information, such as battery information and emergency stop status.'';
    license = with lib.licenses; [ asl20 ];
  };
}
