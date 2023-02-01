
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils }:
buildRosPackage {
  pname = "ros-foxy-libyaml-vendor";
  version = "1.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "libyaml_vendor-release";
        rev = "release/foxy/libyaml_vendor/1.0.4-1";
        sha256 = "sha256-Joc1FjzPFxl6QGbovN/9V1aodctV+TC5TvSN4SYLoo4=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture rcpputils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libyaml, provides the last version (1.8.0 rc) that ships with a CMake module'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
