
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rexrov2-control, rexrov2-description }:
buildRosPackage {
  pname = "ros-melodic-rexrov2-gazebo";
  version = "0.1.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "rexrov2-release";
        rev = "release/melodic/rexrov2_gazebo/0.1.3-0";
        sha256 = "sha256-LL3g2owe7Qw8QCwneZAGf73vgu5JO/KynBWRbmRBOs0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rexrov2-control rexrov2-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the RexROV 2 vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
