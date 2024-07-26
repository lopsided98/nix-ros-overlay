
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-common";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_common-release/archive/release/jazzy/mola_common/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "96c179f34278dd7e4d62a1b22f3eef28ad004663fab28a6fe7f7323363792abd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Common CMake scripts to all MOLA modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
