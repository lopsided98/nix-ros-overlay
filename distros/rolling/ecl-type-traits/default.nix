
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-rolling-ecl-type-traits";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_type_traits/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "765001266d36a7ab2f12fa954e21043dc755477fee84c2f4d4cd940638deeae7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Extends c++ type traits and implements a few more to boot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
