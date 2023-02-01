
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-scan-publisher-tutorial, navigation-stage, odometry-publisher-tutorial, point-cloud-publisher-tutorial, robot-setup-tf-tutorial, roomba-stage, simple-navigation-goals-tutorial }:
buildRosPackage {
  pname = "ros-melodic-navigation-tutorials";
  version = "0.2.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "navigation_tutorials-release";
        rev = "release/melodic/navigation_tutorials/0.2.4-1";
        sha256 = "sha256-qMpa+ySBUOPBinNqIPg5hLVRywi8KhhzdIaw1MTQsm8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-scan-publisher-tutorial navigation-stage odometry-publisher-tutorial point-cloud-publisher-tutorial robot-setup-tf-tutorial roomba-stage simple-navigation-goals-tutorial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation related tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
