
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-xmllint }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-xmllint";
  version = "0.20.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_cmake_xmllint/0.20.5-4.tar.gz";
    name = "0.20.5-4.tar.gz";
    sha256 = "12266e74756a25879451dc97b7e4c8d3d25cca82a2c6392c8d6654ad232cc287";
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
