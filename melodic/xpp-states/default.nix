
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-xpp-states";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_states/1.0.9-0.tar.gz;
    sha256 = "dd438deb5015cdeb271107a8b8b3b1feb538d6b95704f1cf050e2f5545247e79";
  };

  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin eigen ];

  meta = {
    description = ''Common definitions (positions, velocities, angular angles,
    angular rates) and robot definitions in Cartesian and joint state
    used in the Xpp Motion Framework, as well as conversions to/from
    xpp_msgs.'';
    #license = lib.licenses.BSD;
  };
}
