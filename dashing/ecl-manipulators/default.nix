
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-formatters, ecl-geometry, ecl-license, ament-lint-common, ecl-exceptions, ament-cmake-gtest, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ecl-manipulators";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_manipulators/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "6a1cc5779a81e7823f78598a32fe34f4f36757d94c5d1650a9359a3576871a00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-formatters ecl-license ecl-geometry ecl-exceptions ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-formatters ecl-license ecl-geometry ecl-exceptions ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Deploys various manipulation algorithms, currently just
    feedforward filters (interpolations).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
