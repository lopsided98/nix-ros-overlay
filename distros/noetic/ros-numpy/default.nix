
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, python3Packages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ros-numpy";
  version = "0.0.5-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "eric-wieser";
        repo = "ros_numpy-release";
        rev = "release/noetic/ros_numpy/0.0.5-2";
        sha256 = "sha256-BnA80iEZqTv7HX3WuH6tJyEsoNHGOjqt+6RZBp4485c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.numpy rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of conversion function for extracting numpy arrays from messages'';
    license = with lib.licenses; [ mit ];
  };
}
