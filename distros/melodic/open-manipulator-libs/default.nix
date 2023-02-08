
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-workbench-toolbox, eigen, robotis-manipulator, roscpp }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-libs";
  version = "2.0.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "open_manipulator-release";
        rev = "release/melodic/open_manipulator_libs/2.0.1-0";
        sha256 = "sha256-9p1w2SEcH6jTbW6i27ZkySntmIukuGodih+nmwzbAlk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamixel-workbench-toolbox eigen robotis-manipulator roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator library (Kinematics lib., Dynamixel lib., Drawing path lib.)'';
    license = with lib.licenses; [ asl20 ];
  };
}
