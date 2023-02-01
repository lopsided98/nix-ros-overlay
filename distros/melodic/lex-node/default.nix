
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gtest, lex-common, lex-common-msgs, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-lex-node";
  version = "2.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "lex_node-release";
        rev = "release/melodic/lex_node/2.0.2-1";
        sha256 = "sha256-okwyg5csz6NUfytIBl0EJmL0ypb/ZdSi3dIm2/5V41o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common lex-common lex-common-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
