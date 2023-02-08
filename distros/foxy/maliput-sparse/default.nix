
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, maliput }:
buildRosPackage {
  pname = "ros-foxy-maliput-sparse";
  version = "0.2.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "maliput_sparse-release";
        rev = "release/foxy/maliput_sparse/0.2.2-1";
        sha256 = "sha256-xtZ5bk2UEXkEctGaHVM9Pad70LRBH0f6vNn0kHA+P1g=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ maliput ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput sparse is a maliput backend built on top of waypoints without any analytical model of the surface'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
