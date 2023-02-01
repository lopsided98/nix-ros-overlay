
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control, uuv-control-cascaded-pid, uuv-thruster-manager, uuv-trajectory-control }:
buildRosPackage {
  pname = "ros-melodic-rexrov2-control";
  version = "0.1.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "rexrov2-release";
        rev = "release/melodic/rexrov2_control/0.1.3-0";
        sha256 = "sha256-Dfz5UO60mxqUjCya0WB9SC0mtX3Gw9nXTt+tzxCa2aE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control uuv-control-cascaded-pid uuv-thruster-manager uuv-trajectory-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rexrov2_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
