
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-config, ecl-errors, ecl-exceptions, ecl-license, ecl-time, ecl-utilities }:
buildRosPackage {
  pname = "ros-galactic-ecl-threads";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/galactic/ecl_threads/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "2ebe732c738306e85bd74553898288eccd7d585eae1330ca57f9699fe7b70469";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-concepts ecl-config ecl-errors ecl-exceptions ecl-license ecl-time ecl-utilities ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides the c++ extensions for a variety of threaded
     programming tools. These are usually different on different
     platforms, so the architecture for a cross-platform framework
     is also implemented.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
