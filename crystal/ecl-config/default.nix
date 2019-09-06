
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-build, ecl-license, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-ecl-config";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/crystal/ecl_config/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "8ad595aa9aed466ab1b8e62aa7da54d3694dfe6308695b27d18892807b940de6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-build ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These tools inspect and describe your system with macros, types
     and functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
