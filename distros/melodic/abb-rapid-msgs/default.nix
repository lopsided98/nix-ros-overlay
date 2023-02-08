
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-abb-rapid-msgs";
  version = "0.5.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "abb_robot_driver_interfaces-release";
        rev = "release/melodic/abb_rapid_msgs/0.5.2-1";
        sha256 = "sha256-JEaaBwJgjTm8YdevLdMx5hnzOEVUO5IhemIKHW6eeh4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS message definitions, representing RAPID data from ABB robot controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
