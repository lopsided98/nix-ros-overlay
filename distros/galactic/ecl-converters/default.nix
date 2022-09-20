
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-galactic-ecl-converters";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/galactic/ecl_converters/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "14164a1ff39446863f35131ba4b10cc2b4cd4751a4cf79e7a89c54110b7796a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-concepts ecl-config ecl-errors ecl-exceptions ecl-license ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Some fast/convenient type converters, mostly for char strings or strings.
     These are not really fully fleshed out, alot of them could use the addition for
     the whole range of fundamental types (e.g. all integers, not just int, unsigned int).

     They will come as the need arises.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
