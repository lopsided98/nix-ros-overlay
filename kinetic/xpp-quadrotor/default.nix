
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, xpp-vis }:
buildRosPackage {
  pname = "ros-kinetic-xpp-quadrotor";
  version = "1.0.8";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_quadrotor/1.0.8-0.tar.gz;
    sha256 = "b8a188e515c23909a6eae6b3c98371272c81ca372b6fefd057305a53f4362334";
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
