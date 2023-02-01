
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-swri-profiler-msgs";
  version = "0.2.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "swri-robotics-gbp";
        repo = "swri_profiler-release";
        rev = "release/melodic/swri_profiler_msgs/0.2.2-1";
        sha256 = "sha256-Z/lTDATfvF26DGIF+IYW6N54P1NYKD1MdxEMT95muqI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation std-msgs ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for the swri_profiler tool.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
