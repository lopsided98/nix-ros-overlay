
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-dashing-ecl-config";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/ecl_config/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "6b401eb279f56bb057a4a93202b028f77cd1701212cc4e73b23d43ff6bfd2707";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These tools inspect and describe your system with macros, types
     and functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
