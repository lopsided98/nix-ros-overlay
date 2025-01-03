
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-humble-ecl-converters";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_converters/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "2baf9441f8e4741c4a35e4de7ef38713c74175ee7ac8a6366467fc16fc57b4e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-concepts ecl-config ecl-errors ecl-exceptions ecl-license ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Some fast/convenient type converters, mostly for char strings or strings.
     These are not really fully fleshed out, alot of them could use the addition for
     the whole range of fundamental types (e.g. all integers, not just int, unsigned int).

     They will come as the need arises.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
