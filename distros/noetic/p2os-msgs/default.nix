
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-p2os-msgs";
  version = "2.2.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "allenh1";
        repo = "p2os-release";
        rev = "release/noetic/p2os_msgs/2.2.1-2";
        sha256 = "sha256-wpaMIZvcSwWlUh1fUNGLiCR/017AiCJ3t3pNrhjnqS0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Defines the messages that are used to communicate with the
    p2os_driver package and the ROS infrastructure.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
