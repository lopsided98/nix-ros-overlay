
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosbag, roslib, rospy-message-converter }:
buildRosPackage {
  pname = "ros-melodic-rosbag-pandas";
  version = "0.5.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "eurogroep";
        repo = "rosbag_pandas-release";
        rev = "release/melodic/rosbag_pandas/0.5.3-0";
        sha256 = "sha256-Mf0gzn+eS8RrSOeCR7ZeQi9tebnS2dzzLTczYhK8dds=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.matplotlib pythonPackages.numpy pythonPackages.pandas rosbag roslib rospy-message-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Create a Pandas data frame from a ros bag file.'';
    license = with lib.licenses; [ asl20 ];
  };
}
