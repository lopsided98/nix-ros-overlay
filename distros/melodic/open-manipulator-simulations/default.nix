
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-gazebo }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-simulations";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "open_manipulator_simulations-release";
        rev = "release/melodic/open_manipulator_simulations/1.1.0-1";
        sha256 = "sha256-MurZ4QjNfbFP4FYpDtHMJQaKpvLhdM63ki4QcH/H/LU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation packages for OpenManipulator'';
    license = with lib.licenses; [ asl20 ];
  };
}
