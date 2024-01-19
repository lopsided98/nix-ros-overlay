
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-collision-monitor, cob-grasp-generation, cob-lookat-action, cob-manipulation-msgs, cob-moveit-bringup, cob-moveit-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "60d6b2d0cb1ef39ddd7a5c90a36d460ea2958ebae1a8f2df6ef206772f22dd63";
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
