
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-collision-monitor, cob-grasp-generation, cob-lookat-action, cob-manipulation-msgs, cob-moveit-bringup, cob-moveit-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation";
  version = "0.7.6-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation/0.7.6-2.tar.gz";
    name = "0.7.6-2.tar.gz";
    sha256 = "17578b27ceca783a6f5982bbca3ccf2fec46087ce58295932506c62ab4f4f08c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-collision-monitor cob-grasp-generation cob-lookat-action cob-manipulation-msgs cob-moveit-bringup cob-moveit-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_manipulation stack includes packages that provide manipulation capabilities for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
