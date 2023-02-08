
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cunit, maven, openjdk, openssl }:
buildRosPackage {
  pname = "ros-foxy-cyclonedds";
  version = "0.7.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "cyclonedds-release";
        rev = "release/foxy/cyclonedds/0.7.0-1";
        sha256 = "sha256-MBYwEwzsAkh0K3NQcVWimEY8BpBsduqqT4x5jnNZLyg=";
      };

  buildType = "cmake";
  buildInputs = [ cmake maven openjdk ];
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake maven openjdk ];

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "EPL-2.0" "Eclipse-Distribution-License-1.0" ];
  };
}
