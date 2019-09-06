
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-utilities, ament-lint-common, ament-cmake-gtest, ecl-concepts, ecl-time, ecl-exceptions, ecl-build, ecl-license, ecl-errors, ament-cmake-ros, ament-lint-auto, ecl-config }:
buildRosPackage {
  pname = "ros-crystal-ecl-threads";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_threads/1.0.1-0.tar.gz;
    sha256 = "04e4e9d7cd8b64c1d3169d0f018f14ddde749db5fb7acccc0184371cee0bf078";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-utilities ecl-concepts ecl-time ecl-exceptions ecl-build ecl-license ecl-errors ecl-config ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ ecl-utilities ecl-concepts ecl-time ecl-exceptions ecl-build ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides the c++ extensions for a variety of threaded
     programming tools. These are usually different on different
     platforms, so the architecture for a cross-platform framework
     is also implemented.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
