
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-formatters, ecl-license, ament-lint-common, ament-lint-auto, ecl-build, ecl-exceptions, ament-cmake-gtest, ecl-eigen, ecl-math, sophus, ecl-converters }:
buildRosPackage {
  pname = "ros-eloquent-ecl-linear-algebra";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_linear_algebra/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "317a6ad2ed44ad96181822d98bc43c5e3bb7512308eb467ecbf2a1e6849f25e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ sophus ecl-formatters ecl-license ecl-exceptions ecl-eigen ecl-math ecl-build ecl-converters ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sophus ecl-formatters ecl-license ecl-exceptions ecl-eigen ecl-math ecl-build ecl-converters ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
