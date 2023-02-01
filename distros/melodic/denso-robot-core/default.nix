
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, bcap-core, bcap-service, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-core";
  version = "3.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DENSORobot";
        repo = "denso_robot_ros-release";
        rev = "release/melodic/denso_robot_core/3.2.0-1";
        sha256 = "sha256-DmKLgvuGgu+y3/nL2XJioUK9qmugv5JdMnek9TwYt2s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs bcap-core bcap-service message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot core package includes a node for controlling DENSO robot controllers.'';
    license = with lib.licenses; [ mit ];
  };
}
