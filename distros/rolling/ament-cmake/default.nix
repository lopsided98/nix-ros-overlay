
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-definitions, ament-cmake-export-dependencies, ament-cmake-export-include-directories, ament-cmake-export-interfaces, ament-cmake-export-libraries, ament-cmake-export-link-flags, ament-cmake-export-targets, ament-cmake-gen-version-h, ament-cmake-libraries, ament-cmake-python, ament-cmake-target-dependencies, ament-cmake-test, ament-cmake-version, cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "071c303b7fb5ece7cbbc8180b069104ecee159e2cd40be7fc44d97ec6674951d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-definitions ament-cmake-export-dependencies ament-cmake-export-include-directories ament-cmake-export-interfaces ament-cmake-export-libraries ament-cmake-export-link-flags ament-cmake-export-targets ament-cmake-gen-version-h ament-cmake-libraries ament-cmake-python ament-cmake-target-dependencies ament-cmake-test ament-cmake-version cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The entry point package for the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
