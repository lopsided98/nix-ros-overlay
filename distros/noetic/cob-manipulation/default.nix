
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-collision-monitor, cob-grasp-generation, cob-lookat-action, cob-manipulation-msgs, cob-moveit-bringup, cob-moveit-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "4e7f054c01f433636e7cbce7ae7fe60714f7539d0b4b4776fa543e70fdc4db9e";
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
