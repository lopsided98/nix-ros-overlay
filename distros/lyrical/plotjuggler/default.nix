
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, data-tamer-cpp, fmt, lua, lz4, nlohmann_json, protobuf, qt5, zstd }:
buildRosPackage {
  pname = "ros-lyrical-plotjuggler";
  version = "3.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/plotjuggler-release/archive/release/lyrical/plotjuggler/3.17.2-1.tar.gz";
    name = "3.17.2-1.tar.gz";
    sha256 = "1c043f801cf86cda24e8af178da96558daafbb202e5641c1cce9b81168efd76c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq data-tamer-cpp fmt lua lz4 nlohmann_json protobuf qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras zstd ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PlotJuggler: juggle with data";
    license = with lib.licenses; [ mpl20 ];
  };
}
