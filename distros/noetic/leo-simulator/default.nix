
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-gazebo, leo-gazebo-plugins, leo-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-leo-simulator";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "leo_simulator-release";
        rev = "release/noetic/leo_simulator/1.1.0-1";
        sha256 = "sha256-ybKYtm1ZPTXRS1NNvFssjfu3hLxpUpurkg8BFt23SL0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo-gazebo leo-gazebo-plugins leo-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
