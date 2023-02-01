
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openjdk }:
buildRosPackage {
  pname = "ros-melodic-pepper-meshes";
  version = "0.2.4-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-naoqi";
        repo = "pepper_meshes-release";
        rev = "release/melodic/pepper_meshes/0.2.4-3";
        sha256 = "sha256-bzHZA+HCCsFwhoxm+huqu82gGWm06qoLcizhJcZ3gCg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin openjdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''meshes for the Aldebaran Robotics Pepper'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
