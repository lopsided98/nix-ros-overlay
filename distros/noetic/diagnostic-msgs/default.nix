
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-msgs";
  version = "1.13.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "common_msgs-release";
        rev = "release/noetic/diagnostic_msgs/1.13.1-1";
        sha256 = "sha256-biv7EguJNxUF4G1PlDsn9g0a0O3MnWm5mrCy8pYzbqA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds the diagnostic messages which provide the
    standardized interface for the diagnostic and runtime monitoring
    systems in ROS. These messages are currently used by
    the <a href="http://wiki.ros.org/diagnostics">diagnostics</a>
    Stack, which provides libraries for simple ways to set and access
    the messages, as well as automated ways to process the diagnostic
    data.

    These messages are used for long term logging and will not be
    changed unless there is a very important reason.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
