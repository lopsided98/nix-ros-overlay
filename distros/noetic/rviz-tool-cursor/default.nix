
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pluginlib, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-tool-cursor";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "rviz_tool_cursor";
        rev = "release/noetic/rviz_tool_cursor/1.0.1-1";
        sha256 = "sha256-3J+tQLxNpmwmXDcYz4KlSLu2iOIZJP6VPVzhXXagDrk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rviz_tool_cursor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
