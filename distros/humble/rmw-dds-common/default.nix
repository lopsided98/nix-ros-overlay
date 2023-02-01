
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-humble-rmw-dds-common";
  version = "1.6.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmw_dds_common-release";
        rev = "release/humble/rmw_dds_common/1.6.0-2";
        sha256 = "sha256-Q4i60TiYXYrxyZG2wPLEOe4KNP6iZSgL2Ygnv54zwTM=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rosidl-default-runtime rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Define a common interface between DDS implementations of ROS middleware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
