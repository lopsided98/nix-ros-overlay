
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ament-index-cpp";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/rolling/ament_index_cpp/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "aa913d53f436db47cc7d70efda2031f603e8beb87435b35092f3ea0b49a58926";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ API to access the ament resource index.";
    license = with lib.licenses; [ asl20 ];
  };
}
