
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-objects";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_objects/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "2259a2851279cd428a60928a38cdd4a3504b7669dc00c834b09b9a0fd5f3e5e4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-description gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
