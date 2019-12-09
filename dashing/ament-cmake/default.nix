
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-export-libraries, ament-cmake-target-dependencies, ament-cmake-export-link-flags, ament-cmake-export-interfaces, cmake, ament-cmake-test, ament-cmake-export-dependencies, ament-cmake-export-include-directories, ament-cmake-export-definitions, ament-cmake-core, ament-cmake-libraries, ament-cmake-python }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "fe1f62c644a688180848873dc9a8a865e3a440d406163b1bf3ad3e8b46dde818";
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
