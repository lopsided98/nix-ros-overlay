
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-formatters, ecl-geometry, ecl-license, ament-lint-common, ecl-exceptions, ament-cmake-gtest, ecl-build, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-manipulators";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_manipulators/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "9072031429b88698f4f2afa98037077bbf0256aa6fc11512ea4220f7b15760be";
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
