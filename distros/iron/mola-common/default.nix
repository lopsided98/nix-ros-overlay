
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-iron-mola-common";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_common-release/archive/release/iron/mola_common/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "c4b855480aafc5b581360cdc3f563d58c5dcbd406605b48557c0c164140404a9";
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
