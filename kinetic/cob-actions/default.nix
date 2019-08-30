
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, actionlib-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-actions";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_actions/0.7.0-1.tar.gz;
    sha256 = "36c3c5a6e5ecb671d0f9da8154a2ba215e9705ccbceed4c9bf5eef8826ce9ee4";
  };

  buildInputs = [ message-generation actionlib-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific action definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
