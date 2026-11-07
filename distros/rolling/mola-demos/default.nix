
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-demos";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_demos/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "606789c9478d3361919f3458bbc688dc241f2fd02140b2e5401b412dd1f4c7e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Demo and example launch files for MOLA";
    license = with lib.licenses; [ bsd3 ];
  };
}
