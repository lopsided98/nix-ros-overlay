
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospack }:
buildRosPackage {
  pname = "ros-noetic-rosbash";
  version = "1.15.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros-release";
        rev = "release/noetic/rosbash/1.15.8-1";
        sha256 = "sha256-X5ow/+PTwTqdooqPtqmQjbO3ljOch6ePzb70JMGwtuY=";
      };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted shell commands for using ros with bash.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
