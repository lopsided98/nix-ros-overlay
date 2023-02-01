
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trac-ik-examples, trac-ik-kinematics-plugin, trac-ik-lib, trac-ik-python }:
buildRosPackage {
  pname = "ros-melodic-trac-ik";
  version = "1.5.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "traclabs";
        repo = "trac_ik-release";
        rev = "release/melodic/trac_ik/1.5.1-1";
        sha256 = "sha256-wA0H20bO4T+VePFTrqgtcutRRE3grupYd3Xjt/G7PjQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ trac-ik-examples trac-ik-kinematics-plugin trac-ik-lib trac-ik-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS packages in this repository were created to provide an improved
    alternative Inverse Kinematics solver to the popular inverse Jacobian
    methods in KDL.  TRAC-IK handles joint-limited chains better than KDL
    without increasing solve time.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
