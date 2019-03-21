
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-collision-monitor, cob-moveit-bringup, cob-obstacle-distance-moveit, cob-moveit-interface, catkin, cob-pick-place-action, cob-lookat-action, cob-grasp-generation }:
buildRosPackage {
  pname = "ros-kinetic-cob-manipulation";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_manipulation/0.7.1-0.tar.gz;
    sha256 = "0348faf4b9b1745f18c2af598faa86999ae291d24f63681d992dcd5df2a9281b";
  };

  propagatedBuildInputs = [ cob-collision-monitor cob-moveit-bringup cob-pick-place-action cob-obstacle-distance-moveit cob-lookat-action cob-grasp-generation cob-moveit-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_manipulation stack includes packages that provide manipulation capabilities for Care-O-bot.'';
    #license = lib.licenses.Apache 2.0;
  };
}
