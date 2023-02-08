
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, libccd, octomap }:
buildRosPackage {
  pname = "ros-melodic-fcl-catkin";
  version = "0.6.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wxmerkt";
        repo = "fcl_catkin-release";
        rev = "release/melodic/fcl_catkin/0.6.1-2";
        sha256 = "sha256-WcsDCNzbxl+69WQ6m1ctq7rgXfwPDQ88VqXiRPC8rpU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen libccd octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fcl_catkin'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
