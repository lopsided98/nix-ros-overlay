
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-common";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_common-release/archive/release/kilted/mola_common/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "73ead4e2e78528cdd9afbe6f79332a5280679d1b61cf2646e2aa28dd46ce8dab";
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
