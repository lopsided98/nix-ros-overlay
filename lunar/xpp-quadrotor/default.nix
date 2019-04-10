
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro, roscpp, xpp-vis }:
buildRosPackage {
  pname = "ros-lunar-xpp-quadrotor";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/lunar/xpp_quadrotor/1.0.10-0.tar.gz;
    sha256 = "ab43536eef03ef8eb8538d28774f8411008b64967ee689e74db9c14cc12a430c";
  };

  buildInputs = [ roscpp xacro xpp-vis ];
  propagatedBuildInputs = [ roscpp xacro xpp-vis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The URDF file for a quadrotor to be used with the xpp packages and a 
    simple rviz publisher of quadrotor tfs.
     
    Adapted from Daniel Mellinger, Nathan Michael, Vijay Kumar, 
    &quot;Trajectory Generation and Control for Precise Aggressive Maneuvers
    with Quadrotors&quot;.'';
    #license = lib.licenses.BSD;
  };
}
