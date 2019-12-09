
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-formatters, ecl-license, ecl-type-traits, ament-lint-common, ament-lint-auto, ecl-errors, ecl-utilities, ecl-exceptions, ecl-mpl, ament-cmake-gtest, ecl-config, ecl-build, ecl-converters }:
buildRosPackage {
  pname = "ros-dashing-ecl-containers";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_containers/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "6ba316db6dc8afd865c643e56fc71bcc970988911ba77cd6eda064e4457bcafa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-formatters ecl-license ecl-type-traits ecl-errors ecl-utilities ecl-exceptions ecl-mpl ecl-config ecl-build ecl-converters ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-formatters ecl-license ecl-type-traits ecl-errors ecl-utilities ecl-exceptions ecl-mpl ecl-config ecl-converters ];
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
