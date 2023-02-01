
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-robot-setup-tf-tutorial";
  version = "0.2.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "navigation_tutorials-release";
        rev = "release/melodic/robot_setup_tf_tutorial/0.2.4-1";
        sha256 = "sha256-QaYglsQNDJYMXThFFbPway7lRq+RkQ/nWG18mWbGhSo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_setup_tf_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
