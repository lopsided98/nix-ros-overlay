
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-humble-hash-library-vendor";
  version = "0.1.1-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "hash_library_vendor-release";
        rev = "release/humble/hash_library_vendor/0.1.1-3";
        sha256 = "sha256-/aXRAfmumq2WRfhcS24fzeg13YY+hDi9NQYpVUQNR6w=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto git ];

  meta = {
    description = ''ROS2 vendor package for stbrumme/hash-library'';
    license = with lib.licenses; [ asl20 "Zlib-License" ];
  };
}
