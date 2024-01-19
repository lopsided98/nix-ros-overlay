
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hand-bridge }:
buildRosPackage {
  pname = "ros-noetic-cob-hand";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/noetic/cob_hand/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "def20ffe69e0af6e5d173018e5d5e7fdb287a80eecb71217dc8fb7ceaf721899";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-hand-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand stack includes packages that provide access to the Care-O-bot hand through ROS serial.'';
    license = with lib.licenses; [ asl20 ];
  };
}
