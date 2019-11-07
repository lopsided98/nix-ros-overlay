
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, actionlib-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-actions";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_actions/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "0ee2bbc47462d9bab639ab23b3fc203783abba5d2dd29fb5c050fcc0b9ffc97b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation actionlib-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific action definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
