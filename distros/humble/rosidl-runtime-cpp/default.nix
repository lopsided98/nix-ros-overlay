
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-humble-rosidl-runtime-cpp";
  version = "3.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rosidl-release";
        rev = "release/humble/rosidl_runtime_cpp/3.1.4-1";
        sha256 = "sha256-J5Dv2T1mMflVM+fTpK1eGrrGV4UQVWd/YuaKWiIQJfs=";
      };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides definitions and templated functions for getting and working with rosidl typesupport types in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
