
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-hand-bridge }:
buildRosPackage {
  pname = "ros-kinetic-cob-hand";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/kinetic/cob_hand/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "34d2c47cb533a381e98bfe6150d3193c97313750623b5ae6e8c0cd56e68b791b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-hand-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand stack includes packages that provide access to the Care-O-bot hand through ROS serial.'';
    license = with lib.licenses; [ asl20 ];
  };
}
