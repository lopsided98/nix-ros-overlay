
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-rosparam-handler";
  version = "0.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "cbandera";
        repo = "rosparam_handler-release";
        rev = "release/melodic/rosparam_handler/0.1.4-1";
        sha256 = "sha256-DNpRsk38hZoPSCa8YLGYJcEakWVUIsmzOgBY6w6qxnw=";
      };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ dynamic-reconfigure roscpp ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An easy wrapper for using parameters in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
