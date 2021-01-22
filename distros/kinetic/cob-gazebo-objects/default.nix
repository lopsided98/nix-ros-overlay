
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-objects";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_objects/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "8a82e9d671fee70ee79d8ba8065738f2f9152a3724eae89199f34934d7fecfa5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-description gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
