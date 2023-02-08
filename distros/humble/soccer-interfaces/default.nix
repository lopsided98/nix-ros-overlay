
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, soccer-vision-2d-msgs, soccer-vision-3d-msgs, soccer-vision-attribute-msgs }:
buildRosPackage {
  pname = "ros-humble-soccer-interfaces";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "soccer_interfaces-release";
        rev = "release/humble/soccer_interfaces/0.1.0-1";
        sha256 = "sha256-4lOFn2p0uaDcS/4mDfWG/Q1OGsw8t1EAYJWVsHD6k+M=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ soccer-vision-2d-msgs soccer-vision-3d-msgs soccer-vision-attribute-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for soccer-related interfaces'';
    license = with lib.licenses; [ asl20 ];
  };
}
