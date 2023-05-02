
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, git }:
buildRosPackage {
  pname = "ros-rolling-foonathan-memory-vendor";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/rolling/foonathan_memory_vendor/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "b57a0e81b114896c353f2f6047675b32b9d693f67a3f002ab163092908d4ff9c";
  };

  buildType = "cmake";
  buildInputs = [ git ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint ];
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = ''Foonathan/memory vendor package for Fast-RTPS.'';
    license = with lib.licenses; [ asl20 "Zlib" ];
  };
}
