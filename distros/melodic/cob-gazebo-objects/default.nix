
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-gazebo-objects";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/melodic/cob_gazebo_objects/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "f20fafbb384f5bd544d09104bfae886e42d1689f9c4382946b6678d44c59c17e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-description gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
