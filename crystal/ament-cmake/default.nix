
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-export-libraries, ament-cmake-target-dependencies, ament-cmake-export-link-flags, ament-cmake-export-interfaces, cmake, ament-cmake-test, ament-cmake-export-dependencies, ament-cmake-export-include-directories, ament-cmake-export-definitions, ament-cmake-core, ament-cmake-libraries, ament-cmake-python }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "bf2fd9fe87c115775fe65edc3ac86e01770a979300da2d962053541681bc69ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ ament-cmake-export-libraries ament-cmake-target-dependencies ament-cmake-export-interfaces ament-cmake-export-link-flags cmake ament-cmake-test ament-cmake-export-dependencies ament-cmake-export-include-directories ament-cmake-export-definitions ament-cmake-core ament-cmake-libraries ament-cmake-python ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The entry point package for the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
