
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, orocos-kdl, python3, python3Packages }:
buildRosPackage {
  pname = "ros-melodic-jsk-python-orocos-kdl-python3";
  version = "1.4.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "orocos-kdl_python3-release";
        rev = "release/melodic/jsk_python_orocos_kdl_python3/1.4.2-2";
        sha256 = "sha256-TKMgRH2Sq9p7Epq1yzvmCCF3+ABYhwMy9BJsVCbE7xs=";
      };

  buildType = "cmake";
  buildInputs = [ python3Packages.catkin-pkg python3Packages.sip_4 ];
  propagatedBuildInputs = [ catkin orocos-kdl python3 ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg ];

  meta = {
    description = ''This package contains the python bindings PyKDL for the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.
    This repository is for python3 compatibility in melodic environment.
    Supported by ROS community.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
