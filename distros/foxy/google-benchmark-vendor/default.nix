
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark }:
buildRosPackage {
  pname = "ros-foxy-google-benchmark-vendor";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "google_benchmark_vendor-release";
        rev = "release/foxy/google_benchmark_vendor/0.0.3-1";
        sha256 = "sha256-RSqaND91QeTX2POtkVIGwJAy9evjeiVItx/yllJSEqM=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gbenchmark ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package provides Google Benchmark.'';
    license = with lib.licenses; [ asl20 ];
  };
}
