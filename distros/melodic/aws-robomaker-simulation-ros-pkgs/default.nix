
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robomaker-simulation-msgs }:
buildRosPackage {
  pname = "ros-melodic-aws-robomaker-simulation-ros-pkgs";
  version = "1.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "aws_robomaker_simulation_ros_pkgs-release";
        rev = "release/melodic/aws_robomaker_simulation_ros_pkgs/1.1.1-2";
        sha256 = "sha256-50jWSYADy5oEJIDPCbB3I79MQ/7tSiTueRonVcT5pEk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robomaker-simulation-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AWS RoboMaker package for accessing the simulation service.'';
    license = with lib.licenses; [ asl20 ];
  };
}
