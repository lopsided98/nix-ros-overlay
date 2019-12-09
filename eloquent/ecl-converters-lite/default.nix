
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ament-lint-auto, ecl-config, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-ecl-converters-lite";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_converters_lite/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "06ca2a6db93a33e3fff24f4417896437558f10c8e6938424a2b7af290420ad74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-config ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters
     suitable for firmware development. That is, there is no use of new,
     templates or exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
