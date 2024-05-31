
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-jazzy-rmf-cmake-uncrustify";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_cmake_uncrustify-release/archive/release/jazzy/rmf_cmake_uncrustify/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "a7c84a287f14c59d0418b11f0d074dc879e798479913b5a9a7e98191c15830e8";
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
