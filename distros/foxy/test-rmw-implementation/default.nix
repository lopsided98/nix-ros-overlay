
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcutils, rmw, rmw-dds-common, rmw-implementation, rmw-implementation-cmake, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-test-rmw-implementation";
  version = "1.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmw_implementation-release";
        rev = "release/foxy/test_rmw_implementation/1.0.3-1";
        sha256 = "sha256-UEByB/VpwB9TayiQx9m/jnWpNgYbW6Rm+x8LbB7ydto=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rcutils rmw rmw-dds-common rmw-implementation rmw-implementation-cmake test-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Test suite for ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
