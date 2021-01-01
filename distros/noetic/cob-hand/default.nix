
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hand-bridge }:
buildRosPackage {
  pname = "ros-noetic-cob-hand";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/noetic/cob_hand/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "80b3f611a8be6ea90a1f9f1df5c704a035a347b3419f743f757b1b6138224d04";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-hand-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand stack includes packages that provide access to the Care-O-bot hand through ROS serial.'';
    license = with lib.licenses; [ asl20 ];
  };
}
