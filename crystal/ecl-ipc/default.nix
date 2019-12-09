
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, ament-cmake-ros, ecl-license, ament-lint-common, ament-lint-auto, ecl-errors, ecl-exceptions, ecl-config, ecl-threads, ecl-time-lite, ecl-build, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-ecl-ipc";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_ipc/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "8b8c012ac5e1ad3893b3faa2985b7fe0c276271992adb1dbfc2f745a04e4063d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-time ecl-license ecl-errors ecl-exceptions ecl-time-lite ecl-threads ecl-config ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-time ecl-license ecl-errors ecl-exceptions ecl-time-lite ecl-threads ecl-config ecl-build ];
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
