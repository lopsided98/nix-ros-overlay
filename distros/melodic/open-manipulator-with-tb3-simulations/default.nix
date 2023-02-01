
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-with-tb3-gazebo }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-simulations";
  version = "1.1.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "open_manipulator_with_tb3_simulations-release";
        rev = "release/melodic/open_manipulator_with_tb3_simulations/1.1.0-2";
        sha256 = "sha256-F+2bbftCN37EYuat7EW2C3OvCNMfa6tvh3Kba7TFl3A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-with-tb3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation packages for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
