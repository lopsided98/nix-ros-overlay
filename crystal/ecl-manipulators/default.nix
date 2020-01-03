
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-license }:
buildRosPackage {
  pname = "ros-crystal-ecl-manipulators";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_manipulators/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "9072031429b88698f4f2afa98037077bbf0256aa6fc11512ea4220f7b15760be";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-exceptions ecl-formatters ecl-geometry ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Deploys various manipulation algorithms, currently just
    feedforward filters (interpolations).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
