
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, criutils, geometry-msgs, message-generation, message-runtime, python3Packages, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-handeye";
  version = "0.1.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "crigroup";
        repo = "handeye-release";
        rev = "release/noetic/handeye/0.1.2-2";
        sha256 = "sha256-BeUw1PPgnxelwZZNnY8zjJjAj5q2htQKDCQa2h44NnA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ baldor criutils geometry-msgs message-runtime python3Packages.matplotlib python3Packages.numpy python3Packages.scipy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The handeye package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
