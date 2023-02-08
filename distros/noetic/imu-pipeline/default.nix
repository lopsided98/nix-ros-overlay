
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-processors, imu-transformer }:
buildRosPackage {
  pname = "ros-noetic-imu-pipeline";
  version = "0.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "imu_pipeline-release";
        rev = "release/noetic/imu_pipeline/0.3.1-1";
        sha256 = "sha256-5o0hwbxZYMzjESvRHbi3/xvc7poAWXWbK9TJNGYsBzM=";
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
