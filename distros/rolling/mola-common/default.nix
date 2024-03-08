
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-common";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_common-release/archive/release/rolling/mola_common/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "565fc09e9fce23dbb0dc8e97ba1fd3724ed215db66c436eeac10d52f384eaed8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = ''Common CMake scripts to all MOLA modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
