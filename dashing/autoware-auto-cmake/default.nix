
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-uncrustify, ament-cmake-cppcheck, ament-cmake-lint-cmake, ament-cmake-copyright, ament-cmake-cpplint }:
buildRosPackage rec {
  pname = "ros-dashing-autoware-auto-cmake";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_cmake/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "88b20b4eaf856d670b270415ae834e926f83fbc27183c91d6130d77b9c3e6477";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-uncrustify ament-cmake-core ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-copyright ament-cmake-cpplint ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''Import the compiler settings defined for Autoware.Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
