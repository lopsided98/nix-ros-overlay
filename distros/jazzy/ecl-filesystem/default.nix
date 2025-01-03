
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-filesystem";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_filesystem/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "2e7ccfcf4b2ff561e4b8cc313efc13a6abb7af30bc0a5916e50ec5f8b47c8358";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Cross platform filesystem utilities (until c++11 makes its way in).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
