
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, lanelet2-io, maliput, maliput-sparse }:
buildRosPackage {
  pname = "ros-foxy-maliput-osm";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_osm-release/archive/release/foxy/maliput_osm/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "1d4efc868d03997316e661e78c48942dc6e17f0f8288e7a626d05edecb515afd";
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
