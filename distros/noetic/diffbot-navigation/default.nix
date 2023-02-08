
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, diffbot-bringup, dwa-local-planner, map-server, move-base }:
buildRosPackage {
  pname = "ros-noetic-diffbot-navigation";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-mobile-robots-release";
        repo = "diffbot-release";
        rev = "release/noetic/diffbot_navigation/1.1.0-1";
        sha256 = "sha256-IsXICj+MV3+q7H7i0NV5Dpr1nGPMY3TaE9KdhQrWqsg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl base-local-planner diffbot-bringup dwa-local-planner map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_navigation package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
