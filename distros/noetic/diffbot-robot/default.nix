
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diffbot-base, diffbot-bringup, diffbot-control, diffbot-description, diffbot-gazebo, diffbot-navigation }:
buildRosPackage {
  pname = "ros-noetic-diffbot-robot";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-mobile-robots-release";
        repo = "diffbot-release";
        rev = "release/noetic/diffbot_robot/1.1.0-1";
        sha256 = "sha256-EM2zhRUCrfaG7+lZPz3NUfYrrWvj4u7SUyx8UxxKNRs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diffbot-base diffbot-bringup diffbot-control diffbot-description diffbot-gazebo diffbot-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_robot package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
