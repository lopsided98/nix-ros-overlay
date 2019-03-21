
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, actionlib-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-actions";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_actions/0.6.10-0.tar.gz;
    sha256 = "b8c36d6d975dcda14738828667678cb1ae23a8b461b84714f40c6515d4fcae7f";
  };

  propagatedBuildInputs = [ message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin message-generation actionlib-msgs ];

  meta = {
    description = ''This Package contains Care-O-bot specific action definitions.'';
    #license = lib.licenses.Apache 2.0;
  };
}
