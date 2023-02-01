
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-example-follow-ar-tag, leo-example-line-follower, leo-example-object-detection }:
buildRosPackage {
  pname = "ros-noetic-leo-examples";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "leo_examples-release";
        rev = "release/noetic/leo_examples/0.1.1-1";
        sha256 = "sha256-KBCAGgZly7P8nG8P/yZR52gMBdIDuKUM5Z3+i/tWn6o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo-example-follow-ar-tag leo-example-line-follower leo-example-object-detection ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of ROS packages that show an example usage of functionalities on a stock Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
