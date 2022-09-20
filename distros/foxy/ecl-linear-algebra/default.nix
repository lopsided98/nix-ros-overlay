
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-converters, ecl-eigen, ecl-exceptions, ecl-formatters, ecl-license, ecl-math, sophus }:
buildRosPackage {
  pname = "ros-foxy-ecl-linear-algebra";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_linear_algebra/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "3b1ddf1b7660308d68133915034fe9b493c1f722a17530f3de707babcff8d9a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-converters ecl-eigen ecl-exceptions ecl-formatters ecl-license ecl-math sophus ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
