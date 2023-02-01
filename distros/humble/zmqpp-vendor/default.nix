
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq, git }:
buildRosPackage {
  pname = "ros-humble-zmqpp-vendor";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tier4";
        repo = "zmqpp_vendor-release";
        rev = "release/humble/zmqpp_vendor/0.0.2-1";
        sha256 = "sha256-OHJpSJAua016kXvKxcD1ay55wprlXnqSL19uzz/el6w=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Vendor package for zmqpp'';
    license = with lib.licenses; [ asl20 "Mozilla-Public-License-2.0" ];
  };
}
