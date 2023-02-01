
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, message-generation, message-runtime, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-proxy";
  version = "0.1.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RobotWebTools-release";
        repo = "interactive_marker_proxy-release";
        rev = "release/melodic/interactive_marker_proxy/0.1.2-0";
        sha256 = "sha256-UqzW/6+nZOG28/fGHffdRtYKzqY9udxpcuJtOpzJbfA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ interactive-markers message-runtime roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Proxy Server for Interactive Markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
