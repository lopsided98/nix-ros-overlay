
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-common";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_common-release/archive/release/jazzy/mola_common/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "16d60667d2c0300584bf54b10c4f561f676d36dbe5a83deed0d43b315e2f6130";
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
