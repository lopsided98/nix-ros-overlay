
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, ecl-license, ament-cmake-ros, ament-lint-auto, ecl-config }:
buildRosPackage {
  pname = "ros-dashing-ecl-converters-lite";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/ecl_converters_lite/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "0f9a909efced89b08be1e60a2995d065fe6666f26e52e29ff16f3918f92fadb6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-config ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters
     suitable for firmware development. That is, there is no use of new,
     templates or exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
