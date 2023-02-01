
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-mcmillan-airfield";
  version = "0.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "uav_testing-release";
        rev = "release/melodic/mcmillan_airfield/0.0.1-1";
        sha256 = "sha256-+XIW6ZifuYCFPO7De0jCZArqdRPAlYOCf3sZmtYjQnE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcmillan_airfield package'';
    license = with lib.licenses; [ asl20 ];
  };
}
