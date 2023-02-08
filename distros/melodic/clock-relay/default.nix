
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-relay, roscpp, rosgraph-msgs, roslint }:
buildRosPackage {
  pname = "ros-melodic-clock-relay";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "cpr_multimaster_tools-release";
        rev = "release/melodic/clock_relay/0.0.2-1";
        sha256 = "sha256-6J8QQkdKB5ouMar70htnIfX3BjT0/M7U+JGnqxD7zZw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ message-relay roscpp rosgraph-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Specialization of message_relay for clock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
