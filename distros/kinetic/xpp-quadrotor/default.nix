
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, xacro, xpp-vis }:
buildRosPackage {
  pname = "ros-kinetic-xpp-quadrotor";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_quadrotor/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "b7b0dfb338aa33269aeb5c2d9f63f41cb3f6784b9b5a03fb9d81d7bfda4493c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp xacro xpp-vis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The URDF file for a quadrotor to be used with the xpp packages and a 
    simple rviz publisher of quadrotor tfs.
     
    Adapted from Daniel Mellinger, Nathan Michael, Vijay Kumar, 
    &quot;Trajectory Generation and Control for Precise Aggressive Maneuvers
    with Quadrotors&quot;.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
