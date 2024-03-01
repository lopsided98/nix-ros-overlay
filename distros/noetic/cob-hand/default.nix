
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hand-bridge }:
buildRosPackage {
  pname = "ros-noetic-cob-hand";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/noetic/cob_hand/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "ecd3856dc3250597f46606cb6f7f845d4c69c880dd59edafa0e07ff42862930c";
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
