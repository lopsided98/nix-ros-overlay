
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc-msgs";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "f1tenth";
        repo = "vesc-release";
        rev = "release/melodic/vesc_msgs/1.1.0-1";
        sha256 = "sha256-o3gYx9SO+Y0hJa4smg9nHEhcziTw8GNsqbgQ+oNdars=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for the Vedder VESC open source motor controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
