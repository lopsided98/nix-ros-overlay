
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-converters-lite";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_converters_lite/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "1b178bb45cb4e9187980603147ea905897f023757178aec88b86000cae9ae072";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters
     suitable for firmware development. That is, there is no use of new,
     templates or exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
