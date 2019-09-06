
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-concepts, ecl-build, ecl-license, ament-cmake-ros, ament-lint-auto, ecl-mpl }:
buildRosPackage {
  pname = "ros-crystal-ecl-utilities";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_utilities/1.0.1-0.tar.gz;
    sha256 = "393f6746ee0a4963fff724ea6f63c429e76f2beb5ef25e37e552134afe570b94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ecl-license ecl-concepts ecl-mpl ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-concepts ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Includes various supporting tools and utilities for c++ programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
