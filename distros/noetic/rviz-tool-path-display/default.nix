
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-tool-path-display";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "rviz_tool_path_display-release";
        rev = "release/noetic/rviz_tool_path_display/0.1.1-1";
        sha256 = "sha256-3DeKRG+z0+0iPbTRTX+EROVSIFAnjBib/znOeEiEG0U=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rviz_tool_path_display package'';
    license = with lib.licenses; [ asl20 ];
  };
}
