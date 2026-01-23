
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-index-cpp";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/rolling/ament_index_cpp/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "132db68dd01304008ac230e5190c3ba4c99a0f78b087fb2da0b5783a3e62fbb0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "C++ API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
