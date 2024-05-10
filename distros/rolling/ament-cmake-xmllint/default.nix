
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-xmllint }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-xmllint";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_xmllint/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "45cbb49422c4200c888d0d6baf2f40d18bd4f980c6aa980510dac321ee82dddc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-xmllint ];

  meta = {
    description = "The CMake API for ament_xmllint to check XML file using xmmlint.";
    license = with lib.licenses; [ asl20 ];
  };
}
