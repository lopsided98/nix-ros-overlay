
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, maliput, maliput-dragway, maliput-drake, maliput-integration, maliput-malidrive, maliput-multilane, maliput-object, maliput-object-py, maliput-osm, maliput-py, maliput-sparse, maliput-viz }:
buildRosPackage {
  pname = "ros-foxy-maliput-full";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "maliput_infrastructure-release";
        rev = "release/foxy/maliput_full/0.2.0-1";
        sha256 = "sha256-GRCBZf08T1jOWgni378CM+4bUCLE/Bs0dD1JL31h/70=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ maliput maliput-dragway maliput-drake maliput-integration maliput-malidrive maliput-multilane maliput-object maliput-object-py maliput-osm maliput-py maliput-sparse maliput-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that concentrates all maliput-related packages'';
    license = with lib.licenses; [ bsd3 ];
  };
}
