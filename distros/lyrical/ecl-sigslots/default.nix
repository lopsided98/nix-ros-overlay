
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-threads }:
buildRosPackage {
  pname = "ros-lyrical-ecl-sigslots";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_sigslots/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "fd8ffcd1b251e4839ea7d524b93d7d3b96644b8961ef4b0bd595e45303b715ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-threads ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Provides a signal/slot mechanism (in the same vein as qt sigslots,
     boost::signals etc for intra-process communication. These include
     some improvements - they do not need a preprocessor, are fully type safe,
     allow for simple connections via a posix style string identifier
     and are multithread-safe.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
