
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-package }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gen-version-h";
  version = "1.5.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "ament_cmake-release";
        rev = "release/rolling/ament_cmake_gen_version_h/1.5.2-1";
        sha256 = "sha256-LJR00uEa99+So+qYeyLzkUfGvxDa+LAMQNIn0cuK7C0=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-package ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-package ];

  meta = {
    description = ''Generate a C header containing the version number of the package'';
    license = with lib.licenses; [ asl20 ];
  };
}
