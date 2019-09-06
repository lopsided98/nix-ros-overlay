
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, ament-lint-common, ament-cmake-gtest, ecl-geometry, ecl-build, ecl-exceptions, ecl-license, ament-cmake-ros, ament-lint-auto }:
buildRosPackage rec {
  pname = "ros-dashing-ecl-manipulators";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_manipulators/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "6a1cc5779a81e7823f78598a32fe34f4f36757d94c5d1650a9359a3576871a00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-formatters ecl-geometry ecl-build ecl-exceptions ecl-license ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-formatters ecl-geometry ecl-build ecl-exceptions ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Deploys various manipulation algorithms, currently just
    feedforward filters (interpolations).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
