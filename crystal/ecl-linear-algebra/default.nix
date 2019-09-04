
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-formatters, ecl-eigen, ament-lint-common, sophus, ament-cmake-gtest, ecl-build, ecl-exceptions, ecl-license, ecl-math, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-linear-algebra";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_linear_algebra/1.0.1-0.tar.gz;
    sha256 = "f5a5be624ca3ea6bc470d459a4395f3b74944c615c24987124e235922b8be9ea";
  };

  buildInputs = [ ecl-converters ecl-eigen ecl-formatters sophus ecl-build ecl-exceptions ecl-license ecl-math ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-converters ecl-eigen ecl-formatters sophus ecl-build ecl-exceptions ecl-license ecl-math ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Ecl frontend to a linear matrix package (currently eigen).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
