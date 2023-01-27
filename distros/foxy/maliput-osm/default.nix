
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, lanelet2-io, maliput, maliput-sparse }:
buildRosPackage {
  pname = "ros-foxy-maliput-osm";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_osm-release/archive/release/foxy/maliput_osm/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "f4f637caf5b856c82e1ce2396d67f8be804d8e6b61779c7a70a410bc449088cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ lanelet2-io maliput maliput-sparse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput backend for loading lanelet2-based osm maps.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
