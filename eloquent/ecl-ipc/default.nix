
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-threads, ecl-time, ecl-time-lite }:
buildRosPackage {
  pname = "ros-eloquent-ecl-ipc";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_ipc/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "3017494354cc87eeefa6f467ad3c53be8f39a1b72d9037c5b66f05dc14b99592";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-exceptions ecl-license ecl-threads ecl-time ecl-time-lite ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Interprocess mechanisms vary greatly across platforms - sysv, posix, win32, there
  are more than a few. This package provides an infrastructure to allow for developing
  cross platform c++ wrappers around the lower level c api's that handle these
  mechanisms. These make it not only easier to utilise such mechanisms, but allow it
  to be done consistently across platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
