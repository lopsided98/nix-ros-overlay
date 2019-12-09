
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time, ament-cmake-ros, ecl-license, ament-lint-common, ament-lint-auto, ecl-errors, ecl-utilities, ecl-exceptions, ecl-concepts, ecl-config, ecl-build, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-ecl-threads";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_threads/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "509937d436f51b900f22740008375b17b56956c906009c95fba542eaddd65dae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-time ecl-license ecl-errors ecl-utilities ecl-exceptions ecl-concepts ecl-config ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-time ecl-license ecl-errors ecl-utilities ecl-exceptions ecl-concepts ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package provides the c++ extensions for a variety of threaded
     programming tools. These are usually different on different
     platforms, so the architecture for a cross-platform framework
     is also implemented.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
