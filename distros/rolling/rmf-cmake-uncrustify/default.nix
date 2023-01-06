
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-rolling-rmf-cmake-uncrustify";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_cmake_uncrustify-release/archive/release/rolling/rmf_cmake_uncrustify/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "1d20ccd8b44f576560ebf538c55cde06f9a75169d65021ee90ab365f4408cda4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-uncrustify ];

  meta = {
    description = ''ament_cmake_uncrustify with support for parsing a config file.'';
    license = with lib.licenses; [ asl20 ];
  };
}
