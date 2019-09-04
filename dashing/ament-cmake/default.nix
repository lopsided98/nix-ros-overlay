
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-export-link-flags, ament-cmake-export-definitions, ament-cmake-core, ament-cmake-libraries, ament-cmake-export-libraries, ament-cmake-test, ament-cmake-target-dependencies, ament-cmake-export-include-directories, ament-cmake-export-interfaces, ament-cmake-python, cmake, ament-cmake-export-dependencies }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake";
  version = "0.7.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake/0.7.3-1.tar.gz;
    sha256 = "e68e052b7c72bd9184bc76b8d804a184b99339d617c5f214a4a89ca976534d83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-export-link-flags ament-cmake-export-definitions ament-cmake-core ament-cmake-libraries ament-cmake-export-libraries ament-cmake-test ament-cmake-target-dependencies cmake ament-cmake-export-include-directories ament-cmake-python ament-cmake-export-interfaces ament-cmake-export-dependencies ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The entry point package for the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
