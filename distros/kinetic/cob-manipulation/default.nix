
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-collision-monitor, cob-grasp-generation, cob-lookat-action, cob-moveit-bringup, cob-moveit-interface, cob-obstacle-distance-moveit }:
buildRosPackage {
  pname = "ros-kinetic-cob-manipulation";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_manipulation/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "997633b7c5aa538e5d19ab324cb1f5e316342009480933432c50621ddc42ff16";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-collision-monitor cob-grasp-generation cob-lookat-action cob-moveit-bringup cob-moveit-interface cob-obstacle-distance-moveit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_manipulation stack includes packages that provide manipulation capabilities for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
