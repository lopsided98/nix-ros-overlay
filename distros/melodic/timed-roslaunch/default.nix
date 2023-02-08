
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rospy }:
buildRosPackage {
  pname = "ros-melodic-timed-roslaunch";
  version = "0.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MoriKen254";
        repo = "timed_roslaunch-release";
        rev = "release/melodic/timed_roslaunch/0.1.4-1";
        sha256 = "sha256-Htx5vTSxlnRyzkV6KJ8IOalIBPeNpG+F19gydUEWUqU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Script to delay the launch of a roslaunch file'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
