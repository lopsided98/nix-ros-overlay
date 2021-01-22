
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-robots, openrave }:
buildRosPackage {
  pname = "ros-kinetic-openrave-planning";
  version = "0.0.6";

  src = fetchurl {
    url = "https://github.com/tork-a/openrave_planning-release/archive/release/kinetic/openrave_planning/0.0.6-0.tar.gz";
    name = "0.0.6-0.tar.gz";
    sha256 = "09ac6ef531304b9d8dcc4724384023b50c3bdd8a031bbea8c475ff491c09b68d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ collada-robots openrave ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack offers OpenRAVE-related bindings.
    Maintained by the JSK lab at University of Tokyo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
