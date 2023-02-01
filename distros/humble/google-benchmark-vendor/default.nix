
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-humble-google-benchmark-vendor";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "google_benchmark_vendor-release";
        rev = "release/humble/google_benchmark_vendor/0.1.1-2";
        sha256 = "sha256-0L1i3Z594mEyQiWmnU4WfZLb2sITSJePw2tmAd3lf+Y=";
      };

  buildType = "cmake";
  buildInputs = [ cmake git ];
  propagatedBuildInputs = [ gbenchmark ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = ''This package provides Google Benchmark.'';
    license = with lib.licenses; [ asl20 ];
  };
}
