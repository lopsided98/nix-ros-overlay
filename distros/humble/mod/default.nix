
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, eigen, ompl }:
buildRosPackage {
  pname = "ros-humble-mod";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "OrebroUniversity";
        repo = "mod-release";
        rev = "release/humble/mod/1.1.0-1";
        sha256 = "sha256-P49k8TsFrO7C5WEsf13L8xfzhcuhVHpLhHpS0zSN3eg=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost eigen ompl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maps of Dynamics Package'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
