
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time, ecl-utilities }:
buildRosPackage {
  pname = "ros-humble-ecl-threads";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_threads/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "1654b1390f5a3264e3c9c9995614d0bb00dc17a70f5e168629a005d2e967cc65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-concepts ecl-config ecl-errors ecl-exceptions ecl-license ecl-time ecl-utilities ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package provides the c++ extensions for a variety of threaded
     programming tools. These are usually different on different
     platforms, so the architecture for a cross-platform framework
     is also implemented.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
