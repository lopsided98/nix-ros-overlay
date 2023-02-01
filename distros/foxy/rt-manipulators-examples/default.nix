
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rt-manipulators-cpp }:
buildRosPackage {
  pname = "ros-foxy-rt-manipulators-examples";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rt-net-gbp";
        repo = "rt_manipulators_cpp-release";
        rev = "release/foxy/rt_manipulators_examples/1.0.0-1";
        sha256 = "sha256-dHVhmshZaD7z/hfD5tLkvXw6mehXEQSlivgKwLZ4YZM=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rt-manipulators-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples for RT Manipulators C++ Library'';
    license = with lib.licenses; [ asl20 ];
  };
}
