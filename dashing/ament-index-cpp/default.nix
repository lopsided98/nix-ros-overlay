
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake-gtest, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-ament-index-cpp";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_index-release/archive/release/dashing/ament_index_cpp/0.7.0-1.tar.gz;
    sha256 = "eb1d8feca9b4f44fa7560b8244f6e0152cb9586aaba85baa474fcb12a30ae75e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
