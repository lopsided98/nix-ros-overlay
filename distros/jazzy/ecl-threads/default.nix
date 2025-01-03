
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time, ecl-utilities }:
buildRosPackage {
  pname = "ros-jazzy-ecl-threads";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_threads/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "bf251d5158828f2fec80fe889168f997412797d4e950aabab20c6164f78123d2";
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
