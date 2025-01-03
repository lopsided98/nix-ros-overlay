
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-objects";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_objects/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "5a2acad540840aebe83215f23d009432816771d072f79560a07ca1fba2832b16";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-description gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package provides some objects and furniture for gazebo simulation.";
    license = with lib.licenses; [ asl20 ];
  };
}
