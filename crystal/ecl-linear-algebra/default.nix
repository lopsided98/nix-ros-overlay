
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-formatters, ecl-license, ament-lint-common, ament-lint-auto, ecl-build, ecl-exceptions, ament-cmake-gtest, ecl-eigen, ecl-math, sophus, ecl-converters }:
buildRosPackage {
  pname = "ros-crystal-ecl-linear-algebra";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_linear_algebra/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "f5a5be624ca3ea6bc470d459a4395f3b74944c615c24987124e235922b8be9ea";
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
