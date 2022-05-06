
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-default-robot-behavior, cob-default-robot-config, cob-hardware-config, cob-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-cob-robots";
  version = "0.7.6-r4";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_robots/0.7.6-4.tar.gz";
    name = "0.7.6-4.tar.gz";
    sha256 = "108d2d5764ed228e6aea25c0a03b4210fd6bf409fe6e55c6ac03767bef409a7f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-bringup cob-default-robot-behavior cob-default-robot-config cob-hardware-config cob-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for hardware configuration as well as launch files for starting up the basic layer for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
