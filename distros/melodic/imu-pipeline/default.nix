
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-melodic-imu-pipeline";
  version = "0.2.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "imu_pipeline-release";
        rev = "release/melodic/imu_pipeline/0.2.4-1";
        sha256 = "sha256-awKeMQEfTzkS6edp4EaTzjmCHNbNWUcbanXOe5x13GY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ imu-processors imu-transformer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''imu_pipeline'';
    license = with lib.licenses; [ bsdOriginal "GPL" ];
  };
}
