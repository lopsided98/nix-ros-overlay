
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, git }:
buildRosPackage {
  pname = "ros-rolling-foonathan-memory-vendor";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/rolling/foonathan_memory_vendor/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "48e0d222a8845a8e035843ea383d5b7a715ce2ccf071f19b81bd4bafb2eaeebb";
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
