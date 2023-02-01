
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, gflags, libyamlcpp, maliput }:
buildRosPackage {
  pname = "ros-foxy-maliput-object";
  version = "0.1.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "maliput_object-release";
        rev = "release/foxy/maliput_object/0.1.2-1";
        sha256 = "sha256-v9xYVckxp/e3BoBssmGNzMvkiGc0yzqug7/sGXn7CjM=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt gflags libyamlcpp maliput ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Object'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
