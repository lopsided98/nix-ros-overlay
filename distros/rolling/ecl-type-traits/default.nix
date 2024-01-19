
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-rolling-ecl-type-traits";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_type_traits/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "d4e8ae23473fce4d3ba02ff02e8c376c5dcc6584e5698a6489fa66f8cdb5398d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Extends c++ type traits and implements a few more to boot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
