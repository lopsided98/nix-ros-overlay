
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hand-bridge }:
buildRosPackage {
  pname = "ros-kinetic-cob-hand";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/kinetic/cob_hand/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "54d62a9f8f85b8fce4a313538465f2f081b7c326472a1592977246bed931e9ce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-hand-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand stack includes packages that provide access to the Care-O-bot hand through ROS serial.'';
    license = with lib.licenses; [ asl20 ];
  };
}
