
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-threads, ecl-time, ecl-time-lite }:
buildRosPackage {
  pname = "ros-foxy-ecl-ipc";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_ipc/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "e2a4508afd8204017843feee03f5abc2ec5e3ac8770f09eb6565b5169a27d2e5";
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
