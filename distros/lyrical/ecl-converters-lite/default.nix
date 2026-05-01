
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-converters-lite";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/lyrical/ecl_converters_lite/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "54c9b68e3538163b106404487071c9780babc5408c103445d0e6f9af193125ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "These are a very simple version of some of the functions in ecl_converters
     suitable for firmware development. That is, there is no use of new,
     templates or exceptions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
