
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hand-bridge }:
buildRosPackage {
  pname = "ros-kinetic-cob-hand";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/kinetic/cob_hand/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "a1162f2439436675960a72438053ac7c404cde1dde7eb9e53d412f85cc69c156";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-hand-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand stack includes packages that provide access to the Care-O-bot hand through ROS serial.'';
    license = with lib.licenses; [ asl20 ];
  };
}
