
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ament-lint-auto, ecl-config, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-ecl-converters-lite";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/crystal/ecl_converters_lite/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "92cca05995fd5fa738bfbeb5ad9f49d5a77dedaef8c11ed7d59966bc0f8ce642";
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
