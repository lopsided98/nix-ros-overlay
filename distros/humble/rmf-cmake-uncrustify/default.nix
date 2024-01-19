
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-humble-rmf-cmake-uncrustify";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_cmake_uncrustify-release/archive/release/humble/rmf_cmake_uncrustify/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "f2c3d4532958095a5a10fef5b73027da5a3fdcf215cd17bebe9cc907735d1598";
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
