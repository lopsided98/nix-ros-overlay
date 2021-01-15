
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-definitions, ament-cmake-export-dependencies, ament-cmake-export-include-directories, ament-cmake-export-interfaces, ament-cmake-export-libraries, ament-cmake-export-link-flags, ament-cmake-libraries, ament-cmake-python, ament-cmake-target-dependencies, ament-cmake-test, cmake }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "aedfaa35d4313cad5b1c77d15d4b2841441f1d8695bc8df8d83f879186afcad1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-definitions ament-cmake-export-dependencies ament-cmake-export-include-directories ament-cmake-export-interfaces ament-cmake-export-libraries ament-cmake-export-link-flags ament-cmake-libraries ament-cmake-python ament-cmake-target-dependencies ament-cmake-test cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The entry point package for the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
