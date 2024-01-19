
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-utils";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_utils/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "f4c7cff988737ad1f9869cc9ccb6616ec5131395580f2a2d90d398c70a4d2878";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains some utility functions for qbrobotics® SoftHand INdustry device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
