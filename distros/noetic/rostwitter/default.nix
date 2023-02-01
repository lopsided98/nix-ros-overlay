
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, mk, python3Packages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rostwitter";
  version = "2.1.21-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_3rdparty-release";
        rev = "release/noetic/rostwitter/2.1.21-2";
        sha256 = "sha256-1VqnqAsa4r8TWoUtXSRyVrruIdYtpEExo3yLfOwWwoY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin git mk ];
  propagatedBuildInputs = [ python3Packages.requests python3Packages.requests_oauthlib python3Packages.simplejson rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rostwitter package'';
    license = with lib.licenses; [ "Apache" ];
  };
}
