
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-example-follow-ar-tag";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "leo_examples-release";
        rev = "release/noetic/leo_example_follow_ar_tag/0.1.1-1";
        sha256 = "sha256-kmjPTufeVHd1ZKPq0vObOwNjFXi+xvHhygqjM1MOdWQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Follow ARTag Example for Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
