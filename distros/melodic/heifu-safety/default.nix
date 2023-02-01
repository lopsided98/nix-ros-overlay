
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, heifu-msgs, nav-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-heifu-safety";
  version = "0.7.7-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "BV-OpenSource";
        repo = "heifu-release";
        rev = "release/melodic/heifu_safety/0.7.7-2";
        sha256 = "sha256-RKwKQmkUyEKQsFptkuMfBRoJvFskFfBzp32OLSxCJxA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs heifu-msgs nav-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package enables an allowable safety zone to control the drone with a joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
