
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-collision-monitor, cob-grasp-generation, cob-lookat-action, cob-manipulation-msgs, cob-moveit-bringup, cob-moveit-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "654eecbac177bcfc3d3e049d98747b987bed67feba09377aac7163838898e5a4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-collision-monitor cob-grasp-generation cob-lookat-action cob-manipulation-msgs cob-moveit-bringup cob-moveit-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_manipulation stack includes packages that provide manipulation capabilities for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
