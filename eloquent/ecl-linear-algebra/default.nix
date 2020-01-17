
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-converters, ecl-eigen, ecl-exceptions, ecl-formatters, ecl-license, ecl-math, sophus }:
buildRosPackage {
  pname = "ros-eloquent-ecl-linear-algebra";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_linear_algebra/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "75d6db9b1cec5ea6216efd12fb8fa0f7824088763f82b8b97b5a5a9520c10790";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-converters ecl-eigen ecl-exceptions ecl-formatters ecl-license ecl-math sophus ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
