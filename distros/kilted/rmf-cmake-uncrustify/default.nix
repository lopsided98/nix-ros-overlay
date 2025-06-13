
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-kilted-rmf-cmake-uncrustify";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_cmake_uncrustify-release/archive/release/kilted/rmf_cmake_uncrustify/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "bd33b4f203eb415136297d834f64877e186d2df1fa43b2e31372fd61a5a3151a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-uncrustify ];

  meta = {
    description = "ament_cmake_uncrustify with support for parsing a config file.";
    license = with lib.licenses; [ asl20 ];
  };
}
