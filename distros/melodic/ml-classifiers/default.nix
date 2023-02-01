
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, message-generation, message-runtime, pluginlib, ros-environment, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ml-classifiers";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "astuff";
        repo = "ml_classifiers-release";
        rev = "release/melodic/ml_classifiers/1.0.1-1";
        sha256 = "sha256-sjoxMsPaYl6KicCS/VPN/NwLV8LX0nZ5IMat6Iuk3cc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ros-environment ];
  propagatedBuildInputs = [ eigen message-runtime pluginlib roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ros-environment ];

  meta = {
    description = ''ml_classifiers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
