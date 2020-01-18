
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-threads }:
buildRosPackage {
  pname = "ros-eloquent-ecl-sigslots";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_sigslots/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "6c083e5df6db828c49804ece4b9b68bd78463c881bb7ca241d94bc6ac964b661";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-threads ];
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
