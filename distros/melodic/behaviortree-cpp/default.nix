
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cppzmq, roslib }:
buildRosPackage {
  pname = "ros-melodic-behaviortree-cpp";
  version = "2.5.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "BehaviorTree";
        repo = "behaviortree_cpp-release";
        rev = "release/melodic/behaviortree_cpp/2.5.1-0";
        sha256 = "sha256-0zmtXVWficoB3G4ZPBijEZPgzWqPtCNIH7CCLS3z/90=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cppzmq roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a behavior trees core.'';
    license = with lib.licenses; [ mit ];
  };
}
