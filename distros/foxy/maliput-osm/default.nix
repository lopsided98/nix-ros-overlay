
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, lanelet2-io, maliput, maliput-sparse }:
buildRosPackage {
  pname = "ros-foxy-maliput-osm";
  version = "0.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "maliput_osm-release";
        rev = "release/foxy/maliput_osm/0.2.1-1";
        sha256 = "sha256-atBkkNgH6veyImyV69R2Oc3OmvcM8uyfu+xYssGdTVU=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ lanelet2-io maliput maliput-sparse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput backend for loading lanelet2-based osm maps.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
