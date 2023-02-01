
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-sob-layer";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "dorezyuk";
        repo = "sob_layer-release";
        rev = "release/noetic/sob_layer/0.1.1-1";
        sha256 = "sha256-RyEeDSKqEXCdoc/gnkGJi/tmtx890I+15K7zxfrpRIU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin-replacement for the default costmap_2d::InflationLayer.'';
    license = with lib.licenses; [ mit ];
  };
}
