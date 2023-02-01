
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-foxy-kobuki-firmware";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stonier";
        repo = "kobuki_firmware-release";
        rev = "release/foxy/kobuki_firmware/1.2.0-1";
        sha256 = "sha256-bieNP7SYmjrth3ney7LQlvhZ6M4DEkOpP5L8VXtpI3U=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Firmware blobs for kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
