
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-base, husky-bringup }:
buildRosPackage {
  pname = "ros-foxy-husky-robot";
  version = "1.0.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "husky-release";
        rev = "release/foxy/husky_robot/1.0.7-1";
        sha256 = "sha256-vGDqirvadVAfW56689zjoZcoipPSAUAoEOd1GLMPsBU=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
