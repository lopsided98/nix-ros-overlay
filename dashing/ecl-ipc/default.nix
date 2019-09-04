
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time-lite, ament-lint-common, ament-cmake-gtest, ecl-threads, ecl-exceptions, ecl-time, ecl-build, ecl-license, ecl-errors, ament-cmake-ros, ament-lint-auto, ecl-config }:
buildRosPackage {
  pname = "ros-dashing-ecl-ipc";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_ipc/1.0.4-1.tar.gz;
    sha256 = "6554070454a77532ceab4ce26d7fe9cdb7b9fe599c01e820287ea61cec4d81a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-time-lite ecl-threads ecl-exceptions ecl-time ecl-license ecl-build ecl-errors ecl-config ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-time-lite ecl-threads ecl-exceptions ecl-time ecl-license ecl-build ecl-errors ecl-config ];
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
