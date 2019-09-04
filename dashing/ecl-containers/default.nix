
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, ecl-formatters, ecl-utilities, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-exceptions, ecl-license, ecl-errors, ecl-type-traits, ament-cmake-ros, ament-lint-auto, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-dashing-ecl-containers";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_containers/1.0.4-1.tar.gz;
    sha256 = "6ba316db6dc8afd865c643e56fc71bcc970988911ba77cd6eda064e4457bcafa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-converters ecl-formatters ecl-utilities ecl-build ecl-exceptions ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-converters ecl-formatters ecl-utilities ecl-exceptions ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The containers included here are intended to extend the stl containers.
    In all cases, these implementations are designed to implement
    c++ conveniences and safety where speed is not sacrificed.

    Also includes techniques for memory debugging of common problems such
    as buffer overruns.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
