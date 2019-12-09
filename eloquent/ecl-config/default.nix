
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ament-lint-auto, ecl-build, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-ecl-config";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_config/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "76d90143362391eaab9330dfaa3ea3fdb76ef69ac2720c8c1f3efe96a0c7057b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These tools inspect and describe your system with macros, types
     and functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
