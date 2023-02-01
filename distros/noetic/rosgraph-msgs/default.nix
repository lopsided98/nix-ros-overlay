
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosgraph-msgs";
  version = "1.11.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_comm_msgs-release";
        rev = "release/noetic/rosgraph_msgs/1.11.3-1";
        sha256 = "sha256-Ded1hlfVTDypiQ6NjmeeIOjd1jYQVkLLMN3zv3wx3Vk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages relating to the ROS Computation Graph. These are generally considered to be low-level messages that end users do not interact with.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
