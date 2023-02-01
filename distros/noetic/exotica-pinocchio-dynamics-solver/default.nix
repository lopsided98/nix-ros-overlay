
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clang, exotica-core, pinocchio, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-pinocchio-dynamics-solver";
  version = "6.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipab-slmc";
        repo = "exotica-release";
        rev = "release/noetic/exotica_pinocchio_dynamics_solver/6.2.0-1";
        sha256 = "sha256-jS0hrEhAiEYYKq6wJK2vg+HYbbC/iSoQJ+BpiPIdToI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clang exotica-core pinocchio roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamics solver plug-in using Pinocchio for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
