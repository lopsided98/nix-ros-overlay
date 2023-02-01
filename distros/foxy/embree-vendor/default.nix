
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, glfw3, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-embree-vendor";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "OUXT-Polaris";
        repo = "embree_vendor-release";
        rev = "release/foxy/embree_vendor/0.1.0-1";
        sha256 = "sha256-hY/B8LG+lg3WS6vaqLc8SmgawrnJuceBRrM/w4SANYw=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ glfw3 pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''vendor packages for intel raytracing kernel library'';
    license = with lib.licenses; [ asl20 ];
  };
}
