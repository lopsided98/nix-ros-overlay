
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, git }:
buildRosPackage {
  pname = "ros-jazzy-foonathan-memory-vendor";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/jazzy/foonathan_memory_vendor/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "724fcb68fbabb21dc1fd5c73a0509b4afd3330965aaa73d1e20b94caf568cd0b";
  };

  buildType = "cmake";
  buildInputs = [ git ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint ];
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = "Foonathan/memory vendor package for Fast-RTPS.";
    license = with lib.licenses; [ asl20 "Zlib" ];
  };
}
