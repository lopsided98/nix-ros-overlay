
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, git }:
buildRosPackage {
  pname = "ros-galactic-foonathan-memory-vendor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/galactic/foonathan_memory_vendor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "753733941d76b2f208aaf6418f9a4fb70efbec005c2c2ae7b4045a7da98bce92";
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
