
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-galactic-ament-index-cpp";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_index-release/archive/release/galactic/ament_index_cpp/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "cb146c8b712674cc8c91c9032e3b037cc528b2b528940df9f4364ccbd60f4b58";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ API to access the ament resource index.'';
    license = with lib.licenses; [ asl20 ];
  };
}
