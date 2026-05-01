
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mola-common";
  version = "0.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_common-release/archive/release/lyrical/mola_common/0.5.2-3.tar.gz";
    name = "0.5.2-3.tar.gz";
    sha256 = "373537fc4de79c716b64d9317900ee0ee164c1f1b99a9ec9bbae93fa72c6a160";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Common CMake scripts to all MOLA modules";
    license = with lib.licenses; [ bsd3 ];
  };
}
