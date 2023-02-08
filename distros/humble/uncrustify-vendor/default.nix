
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, uncrustify }:
buildRosPackage {
  pname = "ros-humble-uncrustify-vendor";
  version = "2.0.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "uncrustify_vendor-release";
        rev = "release/humble/uncrustify_vendor/2.0.2-2";
        sha256 = "sha256-1oT+X1kC2I2bIsLMlfVIhm5D+Arco2V57zY3i08gUII=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ uncrustify ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Wrapper around uncrustify, providing nothing but a dependency on uncrustify, on some systems.
    On others, it provides an ExternalProject build of uncrustify.'';
    license = with lib.licenses; [ asl20 "GPL-2.0-only" ];
  };
}
