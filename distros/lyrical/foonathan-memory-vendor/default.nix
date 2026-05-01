
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, git }:
buildRosPackage {
  pname = "ros-lyrical-foonathan-memory-vendor";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/lyrical/foonathan_memory_vendor/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "1e955aa1bdc3c279b50891213fb01f4dd15e2d799b9b9696a10e22f619b557ca";
  };

  buildType = "cmake";
  buildInputs = [ git ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint ];
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = "Foonathan/memory vendor package for Fast DDS.";
    license = with lib.licenses; [ asl20 "Zlib" ];
  };
}
