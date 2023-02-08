
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bison, cacert, catkin, flex, gawk, python3, rostest, time }:
buildRosPackage {
  pname = "ros-noetic-downward";
  version = "2.1.21-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_3rdparty-release";
        rev = "release/noetic/downward/2.1.21-2";
        sha256 = "sha256-ONrwC/dFQhrEf2r7DIuw+pyOvdQnBixzdECItEMhhok=";
      };

  buildType = "catkin";
  buildInputs = [ bison cacert catkin flex python3 rostest ];
  propagatedBuildInputs = [ gawk time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fast downward: PDDL Planner (http://www.fast-downward.org)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
