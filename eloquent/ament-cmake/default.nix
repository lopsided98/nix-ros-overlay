
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-export-libraries, ament-cmake-target-dependencies, ament-cmake-export-link-flags, ament-cmake-export-interfaces, cmake, ament-cmake-test, ament-cmake-export-dependencies, ament-cmake-export-include-directories, ament-cmake-export-definitions, ament-cmake-core, ament-cmake-version, ament-cmake-libraries, ament-cmake-python }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "6de9055c99737d3fe44e639ea5373030ceed36f28f28fe0592baa8563fccbede";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ ament-cmake-export-libraries ament-cmake-target-dependencies ament-cmake-export-interfaces ament-cmake-export-link-flags cmake ament-cmake-test ament-cmake-export-dependencies ament-cmake-export-include-directories ament-cmake-export-definitions ament-cmake-core ament-cmake-version ament-cmake-libraries ament-cmake-python ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The entry point package for the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
