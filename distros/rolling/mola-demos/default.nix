
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-demos";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_demos/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "254bcd7db1b0351650c9aaab936c5af6f29cd3cc6b162ec874bff7e34316a0c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Demo and example launch files for MOLA";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
