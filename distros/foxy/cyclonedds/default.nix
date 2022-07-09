
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, stdenv, buildRosPackage, fetchurl, cmake, cunit, maven, openjdk, openssl }:
buildRosPackage {
  pname = "ros-foxy-cyclonedds";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cyclonedds-release/archive/release/foxy/cyclonedds/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "36b41936eec3ba0d2dd36650da408d4ab9728d377b099d34b113a0a608b675e6";
  };

  buildType = "cmake";
  checkInputs = [ cunit ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ cmake maven openjdk ];

  # Hack to be able to run the ddsconf, broken because nixpkgs use
  # CMAKE_SKIP_BUILD_RPATH to avoid cmake resetting rpath on install
  preBuild = if stdenv.isDarwin then ''
    export DYLD_LIBRARY_PATH="$PWD/lib''${DYLD_LIBRARY_PATH:+:}$DYLD_LIBRARY_PATH"
  '' else ''
    export LD_LIBRARY_PATH="$PWD/lib''${LD_LIBRARY_PATH:+:}$LD_LIBRARY_PATH"
  '';

  meta = {
    description = ''Eclipse Cyclone DDS is a very performant and robust open-source DDS implementation. Cyclone DDS is developed completely in the open as an Eclipse IoT project.'';
    license = with lib.licenses; [ "EPL-2.0" "Eclipse-Distribution-License-1.0" ];
  };
}
