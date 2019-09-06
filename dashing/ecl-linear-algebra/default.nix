
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-formatters, ecl-eigen, ament-lint-common, sophus, ament-cmake-gtest, ecl-build, ecl-exceptions, ecl-license, ecl-math, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-linear-algebra";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_linear_algebra/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "4de917efedf205531ead7a746afcdce1c83ec86e5cf8e5cf90e7b72c5cb16536";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-converters ecl-eigen ecl-formatters sophus ecl-build ecl-exceptions ecl-license ecl-math ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-converters ecl-eigen ecl-formatters sophus ecl-build ecl-exceptions ecl-license ecl-math ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
