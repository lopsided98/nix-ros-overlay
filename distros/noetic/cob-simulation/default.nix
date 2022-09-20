
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-gazebo, cob-gazebo-objects, cob-gazebo-tools, cob-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-cob-simulation";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_simulation/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "c99f3a562752d04de2a51d85ccb2ef9417111d556dc3c9492935e5ed11124b2b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-bringup-sim cob-gazebo cob-gazebo-objects cob-gazebo-tools cob-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_simulation stack includes packages to work with Care-O-bot within simulation environments, e.g. gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
