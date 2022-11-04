
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-foxy-lua-vendor";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/lua_vendor-release/archive/release/foxy/lua_vendor/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "7708341794178f26d71ce7b6605ba4fc8c37ed4199413ebb85754cf5309ddad0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}
