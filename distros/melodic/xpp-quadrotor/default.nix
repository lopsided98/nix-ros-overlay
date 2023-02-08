
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, xacro, xpp-vis }:
buildRosPackage {
  pname = "ros-melodic-xpp-quadrotor";
  version = "1.0.10";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "leggedrobotics";
        repo = "xpp-release";
        rev = "release/melodic/xpp_quadrotor/1.0.10-0";
        sha256 = "sha256-IzqI3I16uhtlIMIfOrzGhD8+YdeJA5psofm0JmMrW9I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
