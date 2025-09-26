
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint, boost, rdl-dynamics, rdl-urdfreader }:
buildRosPackage {
  pname = "ros-jazzy-rdl-benchmark";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/jlack1987/rdl-release/archive/release/jazzy/rdl_benchmark/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "7ad7d9006121025d008f97f495f8db42cceb2ff13a32b6a22611864e8ff4fb86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint ];
  propagatedBuildInputs = [ boost rdl-dynamics rdl-urdfreader ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rdl_benchmark package";
    license = with lib.licenses; [ "Zlib" ];
  };
}
