
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodePackages, nodejs, rospack }:
buildRosPackage {
  pname = "ros-melodic-vapor-master";
  version = "0.3.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "roshub";
        repo = "vapor_master-release";
        rev = "release/melodic/vapor_master/0.3.0-0";
        sha256 = "sha256-3tUQsEFC64rhgljsQ7QlvkEeEFUikm/Y85XXIGHyGeU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin nodePackages.npm ];
  propagatedBuildInputs = [ nodejs rospack ];
  nativeBuildInputs = [ catkin nodePackages.npm nodejs ];

  meta = {
    description = ''high availability ros master'';
    license = with lib.licenses; [ asl20 ];
  };
}
