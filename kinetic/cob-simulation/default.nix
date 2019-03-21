
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-bringup-sim, catkin, cob-gazebo-objects, cob-gazebo-worlds, cob-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-cob-simulation";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_simulation/0.6.10-0.tar.gz;
    sha256 = "2e4e033dea47e288fa4983724b9604151a31cec02bc5aac41ca59a5d69f890cc";
  };

  propagatedBuildInputs = [ cob-bringup-sim cob-gazebo-objects cob-gazebo-worlds cob-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_simulation stack includes packages to work with Care-O-bot within simulation environments, e.g. gazebo.'';
    #license = lib.licenses.Apache 2.0;
  };
}
