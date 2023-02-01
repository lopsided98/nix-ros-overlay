
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client }:
buildRosPackage {
  pname = "ros-noetic-rosserial-chibios";
  version = "0.9.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rosserial-release";
        rev = "release/noetic/rosserial_chibios/0.9.2-1";
        sha256 = "sha256-PrVyJCSdt5hLQEjvi+M1rUT4/qXG3BTi7CnBMWZBhDE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for ChibiOS/HAL platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
