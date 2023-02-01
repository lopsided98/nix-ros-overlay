
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jpeg-streamer, uvc-camera }:
buildRosPackage {
  pname = "ros-melodic-camera-umd";
  version = "0.2.7";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "camera_umd-release";
        rev = "release/melodic/camera_umd/0.2.7-0";
        sha256 = "sha256-U4PFLyVXtuURGMK6J1rOuBHm67pqkFbzVsEW11d9DHM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jpeg-streamer uvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UMD camera metapackage'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
