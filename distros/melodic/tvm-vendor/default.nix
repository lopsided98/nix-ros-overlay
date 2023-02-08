
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, libxml2, openblas, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-tvm-vendor";
  version = "0.7.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "autowarefoundation";
        repo = "tvm_vendor-release";
        rev = "release/melodic/tvm_vendor/0.7.2-1";
        sha256 = "sha256-j4nYJoBch1w/tq7IR1V0lQqjz/cj6+GPsgox3dKNtEU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ git libxml2 openblas ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper around Apache TVM to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
