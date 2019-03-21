
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, actionlib-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-actions";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_actions/0.6.10-0.tar.gz;
    sha256 = "6c0b39e34438edd6749609a999bb18ec80f6ed807da5aabaf7e650f80dc053e7";
  };

  propagatedBuildInputs = [ message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin message-generation actionlib-msgs ];

  meta = {
    description = ''This Package contains Care-O-bot specific action definitions.'';
    #license = lib.licenses.Apache 2.0;
  };
}
