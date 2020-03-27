
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-config";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_config/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "943b84b25e8838b8e04d97515ff735a6a03aab26e4f3f8a0c59d7813d4932076";
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
