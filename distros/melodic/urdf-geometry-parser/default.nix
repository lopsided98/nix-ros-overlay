
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-urdf-geometry-parser";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "urdf_geometry_parser-release";
        rev = "release/melodic/urdf_geometry_parser/0.1.0-1";
        sha256 = "sha256-l2eoHl6UawX0I4fffoKC1lmzTpiArHETSfqpwcaYBgs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest xacro ];
  propagatedBuildInputs = [ roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract geometry value of a vehicle from urdf.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
