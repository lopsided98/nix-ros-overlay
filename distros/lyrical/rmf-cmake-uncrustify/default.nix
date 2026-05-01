
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-lyrical-rmf-cmake-uncrustify";
  version = "1.2.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_cmake_uncrustify-release/archive/release/lyrical/rmf_cmake_uncrustify/1.2.0-7.tar.gz";
    name = "1.2.0-7.tar.gz";
    sha256 = "9d2a77fe7b2ac0126064a1876d05b4cbbf5b6fe6b0dd617d7eac36be0279dd75";
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
