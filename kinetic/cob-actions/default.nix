
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, actionlib-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-actions";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_actions/0.6.11-0.tar.gz;
    sha256 = "b287288e49cf7e2bddef55ef1ce63ffb2ccfc1c47731736dac9b98253914a00c";
  };

  buildInputs = [ message-generation actionlib-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific action definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
