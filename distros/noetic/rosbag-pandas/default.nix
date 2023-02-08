
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosbag, roslib, rospy-message-converter }:
buildRosPackage {
  pname = "ros-noetic-rosbag-pandas";
  version = "0.5.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "eurogroep";
        repo = "rosbag_pandas-release";
        rev = "release/noetic/rosbag_pandas/0.5.4-1";
        sha256 = "sha256-XTybl39xE/YY94CBVaFSIxflVNAezZd9H2E0ve3gTb4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.matplotlib python3Packages.numpy python3Packages.pandas rosbag roslib rospy-message-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create a Pandas data frame from a ros bag file.'';
    license = with lib.licenses; [ asl20 ];
  };
}
