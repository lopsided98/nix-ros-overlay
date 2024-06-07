
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-threads, ecl-time, ecl-time-lite }:
buildRosPackage {
  pname = "ros-jazzy-ecl-ipc";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_ipc/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "04770875b3a759ca757b67dfa999c1c2aa509ad09c5b0c37ed04edefda2fcc6e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-exceptions ecl-license ecl-threads ecl-time ecl-time-lite ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Interprocess mechanisms vary greatly across platforms - sysv, posix, win32, there
  are more than a few. This package provides an infrastructure to allow for developing
  cross platform c++ wrappers around the lower level c api's that handle these
  mechanisms. These make it not only easier to utilise such mechanisms, but allow it
  to be done consistently across platforms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
