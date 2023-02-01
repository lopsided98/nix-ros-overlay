
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-tablet-socket-msgs";
  version = "1.14.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "autoware-ai";
        repo = "messages-release";
        rev = "release/noetic/tablet_socket_msgs/1.14.0-1";
        sha256 = "sha256-K81PQWc5f4ipaEOUnZgJcmABZiUzdI1Jg96O6a9fVkA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tablet_socket_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
