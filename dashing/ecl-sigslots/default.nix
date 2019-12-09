
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ament-cmake-gtest, ecl-threads, ecl-config, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-sigslots";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_sigslots/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "e1e29a11a1b0356dfccc6a0d890c1526e05280bf4619e75e84001e7a53769d58";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-threads ecl-license ecl-config ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-threads ecl-license ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides a signal/slot mechanism (in the same vein as qt sigslots,
     boost::signals etc for intra-process communication. These include
     some improvements - they do not need a preprocessor, are fully type safe,
     allow for simple connections via a posix style string identifier
     and are multithread-safe.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
