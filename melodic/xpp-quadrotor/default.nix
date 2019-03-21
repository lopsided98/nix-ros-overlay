
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, xpp-vis }:
buildRosPackage {
  pname = "ros-melodic-xpp-quadrotor";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_quadrotor/1.0.9-0.tar.gz;
    sha256 = "bf8d27c1805c0b68de3e187193033742d9bbfbd5eec1e417d087016293dd4b32";
  };

  propagatedBuildInputs = [ roscpp xpp-vis ];
  nativeBuildInputs = [ catkin roscpp xpp-vis ];

  meta = {
    description = ''The URDF file for a quadrotor to be used with the xpp packages and a 
    simple rviz publisher of quadrotor tfs.
     
    Adapted from Daniel Mellinger, Nathan Michael, Vijay Kumar, 
    &quot;Trajectory Generation and Control for Precise Aggressive Maneuvers
    with Quadrotors&quot;.'';
    #license = lib.licenses.BSD;
  };
}
