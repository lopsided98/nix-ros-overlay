
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-common, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-ament-index-cpp";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/dashing/ament_index_cpp/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "88cea4e477f229364da0468e56d37ea95c3cc4ed9380e61ac6d7af526ea85d07";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
