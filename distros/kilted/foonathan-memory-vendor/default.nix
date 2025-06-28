
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, git }:
buildRosPackage {
  pname = "ros-kilted-foonathan-memory-vendor";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/kilted/foonathan_memory_vendor/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "859e1d031db9d33ef6d4c1f944778ce669457cfd6c1762944f4306945ef00e03";
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
