
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-definitions, ament-cmake-export-dependencies, ament-cmake-export-include-directories, ament-cmake-export-libraries, ament-cmake-export-link-flags, ament-cmake-export-targets, ament-cmake-gen-version-h, ament-cmake-libraries, ament-cmake-python, ament-cmake-target-dependencies, ament-cmake-test, ament-cmake-version, cmake }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake";
  version = "2.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake/2.8.9-1.tar.gz";
    name = "2.8.9-1.tar.gz";
    sha256 = "aa60d8dfddf0a02a22e59579b3e205349efb35fcc1df7c8ac803029a71395951";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-definitions ament-cmake-export-dependencies ament-cmake-export-include-directories ament-cmake-export-libraries ament-cmake-export-link-flags ament-cmake-export-targets ament-cmake-gen-version-h ament-cmake-libraries ament-cmake-python ament-cmake-target-dependencies ament-cmake-test ament-cmake-version cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The entry point package for the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
