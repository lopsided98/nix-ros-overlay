
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, git }:
buildRosPackage {
  pname = "ros-rolling-foonathan-memory-vendor";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/rolling/foonathan_memory_vendor/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "4a3470b94ee90ab0dc188fbed5f2b96660c947a2fd5c83e88b29ded4649aa872";
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
