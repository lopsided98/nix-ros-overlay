
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-ament-index-cpp";
  version = "1.13.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/lyrical/ament_index_cpp/1.13.3-3.tar.gz";
    name = "1.13.3-3.tar.gz";
    sha256 = "cde48202dc460871c91908dbd084875dbc83998da94c68f62bd289cd83a571e3";
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
