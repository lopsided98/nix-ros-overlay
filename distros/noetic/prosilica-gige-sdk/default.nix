
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-prosilica-gige-sdk";
  version = "1.26.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "prosilica_gige_sdk-release";
        rev = "release/noetic/prosilica_gige_sdk/1.26.3-2";
        sha256 = "sha256-cX85yiPAgi7o6+4ejYv642BsMbesKjHlXtP3ZJ4bkQM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AVT GigE SDK version 1.26 for ROS'';
    license = with lib.licenses; [ "Commercial" ];
  };
}
