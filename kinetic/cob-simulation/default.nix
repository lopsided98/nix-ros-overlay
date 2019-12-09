
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-gazebo-objects, catkin, cob-bringup-sim, cob-gazebo-tools, cob-gazebo-worlds, cob-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-cob-simulation";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_simulation/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "ca8c43602e61baf05bc0007a66e3798c37bf807cb7364d39a27d3ae9fb0348be";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-gazebo-objects cob-bringup-sim cob-gazebo-worlds cob-gazebo-tools cob-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_simulation stack includes packages to work with Care-O-bot within simulation environments, e.g. gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
