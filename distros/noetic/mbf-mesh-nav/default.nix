
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-abstract-nav, mbf-mesh-core, mesh-map, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mbf-mesh-nav";
  version = "1.0.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uos-gbp";
        repo = "mesh_navigation-release";
        rev = "release/noetic/mbf_mesh_nav/1.0.1-2";
        sha256 = "sha256-6hiz4x7Wx3CLbp6dYvDOVYEUSIfVBckZYfbfs5IL6aE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mbf-abstract-nav mbf-mesh-core mesh-map pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_mesh_nav package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
