
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-actions";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_actions/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "b1253270227a1208d5e74386118b7bb7cd918725ee193fe5976c7cbb3a88d1ff";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific action definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
