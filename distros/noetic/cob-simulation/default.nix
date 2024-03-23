
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-gazebo, cob-gazebo-objects, cob-gazebo-tools, cob-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-cob-simulation";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_simulation/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "c0f2dfca431f33c4848bab06cc5ccb705983580b6d2626c97899e0e7bdeea431";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-bringup-sim cob-gazebo cob-gazebo-objects cob-gazebo-tools cob-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_simulation stack includes packages to work with Care-O-bot within simulation environments, e.g. gazebo.";
    license = with lib.licenses; [ asl20 ];
  };
}
