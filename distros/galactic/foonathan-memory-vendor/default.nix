
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, git }:
buildRosPackage {
  pname = "ros-galactic-foonathan-memory-vendor";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/galactic/foonathan_memory_vendor/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "624c8dff568b167d7c4707efc5b172312349947241b0aab663cf0ee7be365ad9";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint ];
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = ''Foonathan/memory vendor package for Fast-RTPS.'';
    license = with lib.licenses; [ asl20 "zlib License" ];
  };
}
