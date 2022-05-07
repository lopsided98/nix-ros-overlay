
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-gazebo, cob-gazebo-objects, cob-gazebo-tools, cob-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-cob-simulation";
  version = "0.7.5-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_simulation/0.7.5-2.tar.gz";
    name = "0.7.5-2.tar.gz";
    sha256 = "eddfe760bd0aa94909ece4da9ef0758fdc0e5fc3516f64c279ae8bfa73a08b4a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-bringup-sim cob-gazebo cob-gazebo-objects cob-gazebo-tools cob-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_simulation stack includes packages to work with Care-O-bot within simulation environments, e.g. gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
